import 'package:dio/dio.dart';
import 'package:skinx_test/features/playlist/data/model/playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/playlist_response.dart';
import 'package:skinx_test/features/playlist/data/source/playlist_data_source.dart';

class RemotePlaylistDataSource extends PlaylistDataSource {
  final Dio dio;

  RemotePlaylistDataSource({
    required this.dio,
  });

  @override
  Future<PlaylistResponse> getPlaylist({
    required PlaylistRequest request,
  }) async {
    var response = await dio.get(
      "todo-list",
      queryParameters: request.toJson(),
    );
    return PlaylistResponse.fromJson(response.data);
  }
}
