import 'package:skinx_test/features/album/data/model/album_request.dart';
import 'package:skinx_test/features/album/data/model/album_response.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';

abstract class AlbumDataSource {
  Future<AlbumResponse> getAlbumDetail({
    required AlbumRequest request,
  });
}
