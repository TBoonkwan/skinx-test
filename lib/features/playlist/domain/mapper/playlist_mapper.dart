import 'package:skinx_test/features/playlist/data/model/my_playlist_response.dart';
import 'package:skinx_test/features/playlist/domain/entity/playlist_ui_model.dart';

class PlaylistMapper {
  PlaylistModel map({
    required MyPlaylistResponse response,
  }) {
    final Uri uri = Uri.parse(response.next ?? "");
    final Map<String, dynamic> queryParams = uri.queryParameters;
    final num nextPage = num.tryParse(queryParams["offset"] ?? "0") ?? 0;

    final List<PlaylistUIModel> uiModel = [];
    response.items?.forEach((element) {
      String imageUrl = "";
      String description = "N/A";

      if (element.images?.isNotEmpty == true) {
        imageUrl = element.images?.first.url ?? "";
      }

      if (element.description?.isNotEmpty == true) {
        description = element.description ?? "";
      }

      uiModel.add(
        PlaylistUIModel(
          image: imageUrl,
          id: element.id ?? "",
          title: element.name ?? "",
          subTitle: description,
        ),
      );
    });

    final PlaylistModel model = PlaylistModel(
      nextPage: nextPage,
      totalPage: response.total ?? 0,
      uiModel: uiModel,
    );

    return model;
  }
}
