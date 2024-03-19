import 'package:dio/dio.dart';
import 'package:skinx_test/features/album/data/source/album_data_source.dart';
import 'package:skinx_test/features/search/data/model/search_request.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';

class RemoteAlbumDataSource extends AlbumDataSource {
  final Dio dio;

  RemoteAlbumDataSource({
    required this.dio,
  });

  @override
  Future<SearchResponse> getAlbumDetail({
    required MySearchRequest request,
  }) async {
    var response = await dio.get(
      "search",
      queryParameters: request.toJson(),
    );
    return SearchResponse.fromJson(response.data);
  }
}
