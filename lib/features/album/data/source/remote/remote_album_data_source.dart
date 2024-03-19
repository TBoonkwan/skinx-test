import 'package:dio/dio.dart';
import 'package:skinx_test/features/album/data/model/album_request.dart';
import 'package:skinx_test/features/album/data/model/album_response.dart';
import 'package:skinx_test/features/album/data/source/album_data_source.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';

class RemoteAlbumDataSource extends AlbumDataSource {
  final Dio dio;

  RemoteAlbumDataSource({
    required this.dio,
  });

  @override
  Future<AlbumResponse> getAlbumDetail({
    required AlbumRequest request,
  }) async {
    var response = await dio.get(
      "albums/${request.albumId}",
      queryParameters: request.toJson(),
    );
    return AlbumResponse.fromJson(response.data);
  }
}
