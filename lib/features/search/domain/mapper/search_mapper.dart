import 'package:skinx_test/features/search/data/model/search_response.dart';
import 'package:skinx_test/features/search/domain/entity/search_ui_model.dart';

class SearchMapper {
  SearchModel map({
    required MySearchResponse response,
  }) {
    final Uri uri = Uri.parse(response.next ?? "");
    final Map<String, dynamic> queryParams = uri.queryParameters;
    final num nextPage = num.tryParse(queryParams["offset"] ?? "0") ?? 0;

    final List<SearchUIModel> uiModel = [];
    response.items?.forEach((element) {
      uiModel.add(
        SearchUIModel(
          image: element.images?.first.url ?? "",
          id: element.id ?? "",
          title: element.name ?? "",
          subTitle: element.description ?? "",
        ),
      );
    });

    final SearchModel model = SearchModel(
      nextPage: nextPage,
      totalPage: response.total ?? 0,
      uiModel: uiModel,
    );

    return model;
  }
}
