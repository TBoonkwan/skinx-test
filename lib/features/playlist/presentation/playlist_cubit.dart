import "package:dio/dio.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:get_storage/get_storage.dart";
import "package:oauth2_client/access_token_response.dart";
import "package:skinx_test/core/constants/app_constants.dart";
import "package:skinx_test/core/exception/app_exception.dart";
import "package:skinx_test/features/authentication/data/model/user_profile_response.dart";
import "package:skinx_test/features/authentication/data/repository/spotify_authentication_repository.dart";
import "package:skinx_test/features/playlist/data/model/my_playlist_request.dart";
import "package:skinx_test/features/playlist/domain/entity/playlist_ui_model.dart";
import "package:skinx_test/features/playlist/domain/usecase/get_tplaylist_usecase.dart";

import "playlist_state.dart";

class PlaylistCubit extends Cubit<PlaylistState> {
  IGetPlaylistUseCase playlistUseCase;
  SpotifyAuthenticationRepository spotifyRepository;

  num totalPage = 0;
  num nextPage = 0;

  PlaylistCubit({
    required this.playlistUseCase,
    required this.spotifyRepository,
  }) : super(const PlaylistState());

  Future<void> authentication() async {
    final GetStorage storage = GetStorage();

    AccessTokenResponse response = await spotifyRepository.authentication();

    storage.write(AppConstants.accessToken, response.accessToken);
    storage.write(AppConstants.refreshToken, response.refreshToken);
  }

  Future<PlaylistModel> getMyPlaylist({
    required UserProfileResponse userProfileResponse,
  }) async {
    try {
      return await playlistUseCase.getPlaylist(
        request: MyPlaylistRequest(
          offset: nextPage,
          limit: 20,
          userId: userProfileResponse.id.toString(),
        ),
      );
    } on DioException {
      throw AppException();
    }
  }

  Future initial() async {
    nextPage = 0;

    emit(
      state.copyWith(eventState: PlaylistEventState.initial),
    );

    await authentication();

    UserProfileResponse userProfileResponse =
        await spotifyRepository.getUserProfile();

    emit(state.copyWith(
      userProfileResponse: userProfileResponse,
    ));

    await spotifyRepository.saveUserProfile(
        userProfileResponse: userProfileResponse);

    try {
      final PlaylistModel model =
          await getMyPlaylist(userProfileResponse: userProfileResponse);

      totalPage = model.totalPage;

      List<PlaylistUIModel> uiModel = model.uiModel;

      if (uiModel.isEmpty == true) {
        emit(
          state.copyWith(
            playlist: [],
            eventState: PlaylistEventState.empty,
          ),
        );
      } else {
        emit(
          state.copyWith(
            playlist: uiModel,
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
