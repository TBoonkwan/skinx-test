import "package:flutter_bloc/flutter_bloc.dart";
import "package:skinx_test/features/album/data/model/album_response.dart";
import "package:skinx_test/features/album/domain/entity/album_ui_model.dart";
import "package:skinx_test/features/authentication/data/model/user_profile_response.dart";
import "package:skinx_test/features/authentication/data/repository/spotify_authentication_repository.dart";
import "package:skinx_test/features/playlist/data/model/add/add_track_request.dart";
import "package:skinx_test/features/playlist/domain/entity/playlist_ui_model.dart";
import "package:skinx_test/features/playlist/domain/repository/playlist_repository.dart";
import "package:skinx_test/features/playlist/domain/usecase/get_playlist_usecase.dart";
import "package:skinx_test/features/playlist/presentation/add/add_tracks_state.dart";
import "package:skinx_test/features/playlist/presentation/playlist_cubit.dart";

class AddTracksCubit extends Cubit<AddTracksState> with GetMyPlaylist {

  AddTracksCubit({
    required this.playlistRepository,
    required this.getPlaylistUseCase,
    required this.spotifyRepository,
  }) : super(const AddTracksState());

  final IPlaylistRepository playlistRepository;
  final IGetPlaylistUseCase getPlaylistUseCase;

  final SpotifyAuthenticationRepository spotifyRepository;
  UserProfileResponse? userProfileResponse;

  String playlistId = '';

  Future setupTrack(List<AlbumTrack> tracks)async {
    userProfileResponse = await spotifyRepository.getUserProfile();

    emit(state.copyWith(tracks: tracks));
  }

  Future getPlaylist() async {
    emit(
      state.copyWith(
        playlists: [],
        eventState: AddTracksPageEventState.loading,
      ),
    );

    final PlaylistModel model = await getMyPlaylist(
      playlistUseCase: getPlaylistUseCase,
      nextPage: 0,
      id: userProfileResponse?.id ?? "",
    );

    List<PlaylistUIModel> uiModel = model.uiModel;

    emit(
      state.copyWith(
        playlists: uiModel,
        eventState: AddTracksPageEventState.success,
      ),
    );
  }

  Future addToPlaylist({
    required String playlistId,
  }) async {
    this.playlistId = playlistId;
    emit(state.copyWith(actionState: AddTracksPageActionState.none));

    final data = state.tracks;

    String prefix = "spotify:track:";

    List<String> prefixedData =
        data.map((element) => prefix + element.id).toList();

    AddTrackRequest request = AddTrackRequest(
      playlistId: playlistId,
      uris: prefixedData,
      position: 0,
    );

    emit(state.copyWith(actionState: AddTracksPageActionState.submit));


    await playlistRepository.addTracksToPlaylist(request: request);

    emit(state.copyWith(actionState: AddTracksPageActionState.success));
  }
}
