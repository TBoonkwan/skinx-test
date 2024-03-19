import 'package:skinx_test/features/search/data/model/search_request.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';
import 'package:skinx_test/features/search/domain/entity/search_ui_model.dart';
import 'package:skinx_test/features/search/domain/mapper/search_mapper.dart';
import 'package:skinx_test/features/search/domain/repository/search_repository.dart';

abstract class IGetSearchUseCase {
  Future<SearchModel> getSearch({
    required MySearchRequest request,
  });
}

class GetSearchUseCase extends IGetSearchUseCase {
  final ISearchRepository searchRepository;
  final SearchMapper mapper;

  GetSearchUseCase({
    required this.searchRepository,
    required this.mapper,
  });

  @override
  Future<SearchModel> getSearch({
    required MySearchRequest request,
  }) async {
    final MySearchResponse response = await searchRepository.getSearch(
      request: request,
    );
    final SearchModel uiModel = mapper.map(
      response: response,
    );
    return uiModel;
  }
}
