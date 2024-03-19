import 'package:skinx_test/features/album/data/model/album_response.dart';
import 'package:skinx_test/features/album/domain/entity/album_ui_model.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';

class AlbumMapper {
  AlbumUIModel? map({
    required AlbumResponse response,
  }) {
    final AlbumUIModel model = AlbumUIModel(
      subTitle: "",
      title: "",
      id: "",
      image: "",
    );

    return model;
  }
}
