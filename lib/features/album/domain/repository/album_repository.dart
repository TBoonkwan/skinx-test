import 'package:skinx_test/features/search/data/model/search_request.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';

abstract class IAlbumRepository {
  Future<SearchResponse> getAlbumDetail({
    required MySearchRequest request,
  });
}
