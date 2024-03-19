import 'package:skinx_test/features/search/data/model/search_response.dart';
import 'package:skinx_test/features/search/domain/entity/search_ui_model.dart';

class AlbumMapper {
  SearchModel map({
    required SearchResponse response,
  }) {
    final Uri uri = Uri.parse(response.albums?.next ?? "");
    final Map<String, dynamic> queryParams = uri.queryParameters;
    final num nextPage = num.tryParse(queryParams["offset"] ?? "0") ?? 0;

    final List<SearchUIModel> uiModel = [];
    response.albums?.items?.forEach((element) {
      uiModel.add(
        SearchUIModel(
          image: element.images?.first.url.toString() ?? "",
          id: element.id ?? "",
          title: element.name ?? "",
          subTitle: element.artists?.first.name ?? "",
        ),
      );
    });

    final SearchModel model = SearchModel(
      nextPage: nextPage,
      totalPage: response.albums?.total ?? 0,
      uiModel: uiModel,
    );

    return model;
  }
}
