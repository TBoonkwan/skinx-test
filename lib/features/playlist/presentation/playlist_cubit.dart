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
import "package:skinx_test/features/playlist/domain/usecase/get_playlist_usecase.dart";

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
    final AccessTokenResponse? response;
    final GetStorage storage = GetStorage();
    final String? refreshToken = storage.read(AppConstants.refreshToken);
    if (refreshToken != null) {
      response = await spotifyRepository.refreshToken(refreshToken: refreshToken);
    } else {
      response = await spotifyRepository.authentication();
    }

    await storage.write(AppConstants.accessToken, response.accessToken);
    await storage.write(AppConstants.refreshToken, response.refreshToken);
  }

  Future<PlaylistModel> getMyPlaylist({
    required String id,
  }) async {
    try {
      return await playlistUseCase.getPlaylist(
        request: MyPlaylistRequest(
          offset: nextPage,
          limit: 20,
          userId: id.toString(),
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

    UserProfileResponse userProfileResponse = await spotifyRepository.getUserProfile();

    emit(state.copyWith(
      userProfileResponse: userProfileResponse,
    ));

    await spotifyRepository.saveUserProfile(userProfileResponse: userProfileResponse);

    await reloadPlaylist();
  }

  void reset() {
    emit(const PlaylistState());
  }

  Future reloadPlaylist() async {
    try {
      final PlaylistModel model = await getMyPlaylist(
        id: state.userProfileResponse?.id ?? "",
      );

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
}
