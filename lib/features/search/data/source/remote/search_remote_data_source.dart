import 'package:dio/dio.dart';
import 'package:skinx_test/features/search/data/model/search_request.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';
import 'package:skinx_test/features/search/data/source/search_data_source.dart';

class RemoteSearchDataSource extends SearchDataSource {
  final Dio dio;

  RemoteSearchDataSource({
    required this.dio,
  });

  @override
  Future<SearchResponse> getSearch({
    required MySearchRequest request,
  }) async {
    var response = await dio.get(
      "search",
      queryParameters: request.toJson(),
    );
    return SearchResponse.fromJson(response.data);
  }
}
