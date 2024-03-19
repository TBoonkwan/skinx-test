import 'package:skinx_test/features/playlist/data/model/my_playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/my_playlist_response.dart';
import 'package:skinx_test/features/playlist/domain/entity/playlist_ui_model.dart';
import 'package:skinx_test/features/playlist/domain/mapper/playlist_mapper.dart';
import 'package:skinx_test/features/playlist/domain/repository/playlist_repository.dart';

abstract class IGetPlaylistUseCase {
  Future<PlaylistModel> getPlaylist({
    required MyPlaylistRequest request,
  });
}

class GetPlaylistUseCase extends IGetPlaylistUseCase {
  final IPlaylistRepository playlistRepository;
  final PlaylistMapper mapper;

  GetPlaylistUseCase({
    required this.playlistRepository,
    required this.mapper,
  });

  @override
  Future<PlaylistModel> getPlaylist({
    required MyPlaylistRequest request,
  }) async {
    final MyPlaylistResponse response = await playlistRepository.getPlaylist(
      request: request,
    );
    final PlaylistModel uiModel = mapper.map(
      response: response,
    );
    return uiModel;
  }
}
