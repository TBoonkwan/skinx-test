import 'package:skinx_test/features/album/domain/mapper/album_mapper.dart';
import 'package:skinx_test/features/album/domain/repository/album_repository.dart';
import 'package:skinx_test/features/search/data/model/search_request.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';
import 'package:skinx_test/features/search/domain/entity/search_ui_model.dart';

abstract class IGetAlbumUseCase {
  Future<SearchModel> getAlbumDetail({
    required MySearchRequest request,
  });
}

class GetAlbumUseCase extends IGetAlbumUseCase {
  final IAlbumRepository albumRepository;
  final AlbumMapper mapper;

  GetAlbumUseCase({
    required this.albumRepository,
    required this.mapper,
  });

  @override
  Future<SearchModel> getAlbumDetail({
    required MySearchRequest request,
  }) async {
    final SearchResponse response = await albumRepository.getAlbumDetail(
      request: request,
    );
    final SearchModel uiModel = mapper.map(
      response: response,
    );
    return uiModel;
  }
}
