import "package:flutter_bloc/flutter_bloc.dart";
import "package:skinx_test/features/playlist/data/model/detail/playlist_detail_request.dart";
import "package:skinx_test/features/playlist/data/model/detail/playlist_detail_response.dart";
import "package:skinx_test/features/playlist/domain/repository/playlist_repository.dart";
import "package:skinx_test/features/playlist/presentation/playlist_detail/playlist_detail_state.dart";

class PlaylistDetailCubit extends Cubit<PlaylistDetailState> {
  PlaylistDetailCubit({
    required this.playlistRepository,
  }) : super(const PlaylistDetailState());

  IPlaylistRepository playlistRepository;

  Future getPlaylistDetail({
    required String playlistId,
  }) async {
    final PlaylistDetailRequest request = PlaylistDetailRequest(
      playlistId: playlistId,
      offset: 0,
      limit: 20,
    );
    final PlaylistDetailResponse response =  await playlistRepository.getPlaylistDetail(request: request);
  }
}
