import 'package:dio/dio.dart';
import 'package:skinx_test/features/search/data/model/search_request.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';
import 'package:skinx_test/features/search/data/source/playlist_data_source.dart';

class RemoteSearchDataSource extends SearchDataSource {
  final Dio dio;

  RemoteSearchDataSource({
    required this.dio,
  });

  @override
  Future<MySearchResponse> getSearch({
    required MySearchRequest request,
  }) async {
    var response = await dio.get(
      "users/${request.userId}/searchs",
      queryParameters: request.toJson(),
    );
    return MySearchResponse.fromJson(response.data);
  }
}
