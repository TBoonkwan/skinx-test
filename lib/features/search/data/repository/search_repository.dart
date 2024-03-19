import 'package:skinx_test/features/search/data/model/search_request.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';
import 'package:skinx_test/features/search/data/source/search_data_source.dart';
import 'package:skinx_test/features/search/domain/repository/search_repository.dart';

class SearchRepository extends ISearchRepository {
  SearchDataSource dataSource;

  SearchRepository({
    required this.dataSource,
  });

  @override
  Future<SearchResponse> getSearch({
    required MySearchRequest request,
  }) async {
    return await dataSource.getSearch(
      request: request,
    );
  }
}
