import 'package:skinx_test/features/album/data/model/album_request.dart';
import 'package:skinx_test/features/album/data/model/album_response.dart';
import 'package:skinx_test/features/album/data/source/album_data_source.dart';
import 'package:skinx_test/features/album/domain/repository/album_repository.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';

class AlbumRepository extends IAlbumRepository {
  AlbumDataSource dataSource;

  AlbumRepository({
    required this.dataSource,
  });

  @override
  Future<AlbumResponse> getAlbumDetail({
    required AlbumRequest request,
  }) async {
    return await dataSource.getAlbumDetail(
      request: request,
    );
  }
}
