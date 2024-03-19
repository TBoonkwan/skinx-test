import 'package:skinx_test/features/album/data/source/album_data_source.dart';
import 'package:skinx_test/features/album/domain/repository/album_repository.dart';
import 'package:skinx_test/features/search/data/model/search_request.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';

class AlbumRepository extends IAlbumRepository {
  AlbumDataSource dataSource;

  AlbumRepository({
    required this.dataSource,
  });

  @override
  Future<SearchResponse> getAlbumDetail({
    required MySearchRequest request,
  }) async {
    return await dataSource.getAlbumDetail(
      request: request,
    );
  }
}
