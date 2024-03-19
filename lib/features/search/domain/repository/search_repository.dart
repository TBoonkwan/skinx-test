import 'package:skinx_test/features/search/data/model/search_request.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';

abstract class ISearchRepository {
  Future<SearchResponse> getSearch({
    required MySearchRequest request,
  });
}
