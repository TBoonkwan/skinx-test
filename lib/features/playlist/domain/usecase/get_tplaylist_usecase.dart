import 'package:skinx_test/features/playlist/data/model/playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/playlist_response.dart';
import 'package:skinx_test/features/playlist/data/model/task.dart';
import 'package:skinx_test/features/playlist/domain/entity/playlist_ui_model.dart';
import 'package:skinx_test/features/playlist/domain/mapper/playlist_mapper.dart';
import 'package:skinx_test/features/playlist/domain/repository/playlist_repository.dart';

abstract class IGetPlaylistUseCase {
  Future<PlaylistModel> getPlaylist({
    required List<Task> allTask,
    required PlaylistRequest request,
  });
}

class GetPlaylistUseCase extends IGetPlaylistUseCase {
  final IPlaylistRepository TodoListRepository;
  final PlaylistMapper mapper;

  GetPlaylistUseCase({
    required this.TodoListRepository,
    required this.mapper,
  });

  @override
  Future<PlaylistModel> getPlaylist({
    required List<Task> allTask,
    required PlaylistRequest request,
  }) async {
    final PlaylistResponse response =
        await TodoListRepository.getPlaylist(request: request);
    allTask.addAll(response.task ?? []);
    response.task = allTask;
    final PlaylistModel model = mapper.map(response: response);
    return model;
  }
}
