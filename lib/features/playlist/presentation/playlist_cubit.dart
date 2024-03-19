import "package:dio/dio.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:get_storage/get_storage.dart";
import "package:oauth2_client/access_token_response.dart";
import "package:skinx_test/core/constants/app_constants.dart";
import "package:skinx_test/core/exception/app_exception.dart";
import "package:skinx_test/features/authentication/data/repository/spotify_authentication_repository.dart";
import "package:skinx_test/features/playlist/data/constants/playlist_constants.dart";
import "package:skinx_test/features/playlist/data/model/playlist_request.dart";
import "package:skinx_test/features/playlist/data/model/task.dart";
import "package:skinx_test/features/playlist/domain/entity/playlist_ui_model.dart";
import "package:skinx_test/features/playlist/domain/usecase/get_tplaylist_usecase.dart";

import "playlist_state.dart";

class PlaylistCubit extends Cubit<PlaylistState> {
  List<Task> playlists = [];

  IGetPlaylistUseCase getPlaylistUseCase;
  SpotifyAuthenticationRepository spotifyRepository;

  String currentStatus = PlaylistStatus.todo.value;
  num totalPage = 0;
  num nextPage = 0;

  PlaylistCubit({
    required this.getPlaylistUseCase,
    required this.spotifyRepository,
  }) : super(const PlaylistState());

  Future<void> authentication() async {
    final GetStorage storage = GetStorage();

    if (storage.read(AppConstants.refreshToken) != null) {
      return;
    }

    AccessTokenResponse response = await spotifyRepository.authentication();

    storage.write(AppConstants.accessToken, response.accessToken);
    storage.write(AppConstants.refreshToken, response.refreshToken);
  }

  Future<PlaylistModel> fetchTodoList() async {
    try {
      return await getPlaylistUseCase.getPlaylist(
        allTask: playlists,
        request: PlaylistRequest(
          offset: nextPage,
          limit: 10,
          sortBy: PlaylistSortBy.createdAt.value,
          isAsc: true,
          status: currentStatus.toUpperCase(),
        ),
      );
    } on DioException {
      throw AppException();
    }
  }

  Future initial({
    required String status,
  }) async {
    playlists.clear();
    nextPage = 0;
    currentStatus = status;

    emit(
      state.copyWith(eventState: PlaylistEventState.initial),
    );

    await authentication();

    await spotifyRepository.getUserProfile();

    try {
      final PlaylistModel model = await fetchTodoList();

      totalPage = model.totalPage;

      List<PlaylistUIModel> uiModel = model.uiModel;

      if (uiModel.isEmpty == true) {
        emit(
          state.copyWith(
            taskList: [],
            eventState: PlaylistEventState.empty,
          ),
        );
      } else {
        emit(
          state.copyWith(
            taskList: uiModel,
            eventState: PlaylistEventState.success,
          ),
        );
      }
    } on Exception {
      emit(state.copyWith(
        actionState: PlaylistActionState.networkError,
        eventState: PlaylistEventState.networkError,
      ));
    }
  }

  // Future loadMoreItem() async {
  //   if (nextPage == totalPage ||
  //       state.actionState == TodoListPageActionState.loadMore) {
  //     return;
  //   }
  //
  //   nextPage++;
  //
  //   emit(
  //     state.copyWith(
  //       actionState: TodoListPageActionState.loadMore,
  //     ),
  //   );
  //
  //   try {
  //     final PlaylistModel model = await fetchTodoList();
  //
  //     emit(
  //       state.copyWith(
  //         actionState: TodoListPageActionState.none,
  //       ),
  //     );
  //
  //     emit(
  //       state.copyWith(
  //         taskList: model.uiModel,
  //       ),
  //     );
  //   } on Exception {
  //     nextPage--;
  //     emit(state.copyWith(
  //       actionState: TodoListPageActionState.networkError,
  //     ));
  //   }
  // }

  void reset() {
    emit(const PlaylistState());
  }
}
