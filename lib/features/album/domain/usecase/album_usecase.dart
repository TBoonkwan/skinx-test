import 'package:skinx_test/features/album/data/model/album_request.dart';
import 'package:skinx_test/features/album/data/model/album_response.dart';
import 'package:skinx_test/features/album/domain/entity/album_ui_model.dart';
import 'package:skinx_test/features/album/domain/mapper/album_mapper.dart';
import 'package:skinx_test/features/album/domain/repository/album_repository.dart';

abstract class IGetAlbumUseCase {
  Future<AlbumUIModel?> getAlbumDetail({
    required AlbumRequest request,
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
  Future<AlbumUIModel?> getAlbumDetail({
    required AlbumRequest request,
  }) async {
    final AlbumResponse response = await albumRepository.getAlbumDetail(
      request: request,
    );
    final AlbumUIModel? uiModel = mapper.map(
      response: response,
    );
    return uiModel;
  }
}
