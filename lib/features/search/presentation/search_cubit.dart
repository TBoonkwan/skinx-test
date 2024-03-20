import "package:dio/dio.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:skinx_test/core/exception/app_exception.dart";
import "package:skinx_test/features/search/data/model/search_request.dart";
import "package:skinx_test/features/search/domain/entity/search_ui_model.dart";
import "package:skinx_test/features/search/domain/usecase/search_usecase.dart";
import "package:skinx_test/features/search/presentation/search_state.dart";

class SearchCubit extends Cubit<SearchState> {
  IGetSearchUseCase searchUseCase;

  num totalPage = 0;
  num nextPage = 0;

  SearchCubit({
    required this.searchUseCase,
  }) : super(const SearchState());

  Future<SearchModel> getMySearch() async {
    try {
      return await searchUseCase.getSearch(
        request: MySearchRequest(
          query: state.query.toString(),
          offset: 20 * nextPage,
          limit: 20,
        ),
      );
    } on DioException {
      throw AppException();
    }
  }

  Future initial({
    String text = "",
  }) async {
    if (text.isEmpty == true) {
      emit(
        state.copyWith(
          search: [],
          eventState: SearchEventState.empty,
        ),
      );
      return;
    }

    emit(state.copyWith(query: text));

    nextPage = 0;

    emit(
      state.copyWith(eventState: SearchEventState.initial),
    );

    try {
      final SearchModel model = await getMySearch();

      totalPage = model.totalPage;

      List<SearchUIModel> uiModel = model.uiModel;

      if (uiModel.isEmpty == true) {
        emit(
          state.copyWith(
            search: [],
            eventState: SearchEventState.empty,
          ),
        );
      } else {
        emit(
          state.copyWith(
            search: uiModel,
            eventState: SearchEventState.success,
          ),
        );
      }
    } on Exception {
      emit(state.copyWith(
        actionState: SearchActionState.networkError,
        eventState: SearchEventState.networkError,
      ));
    }
  }

  Future loadMoreItem() async {
    if (nextPage == totalPage ||
        state.actionState == SearchActionState.loadMore) {
      return;
    }

    nextPage++;

    emit(
      state.copyWith(
        actionState: SearchActionState.loadMore,
      ),
    );

    try {
      final SearchModel model = await getMySearch();

      emit(
        state.copyWith(
          actionState: SearchActionState.none,
        ),
      );

      state.search.addAll(model.uiModel);

      emit(
        state.copyWith(
          search: state.search,
        ),
      );
    } on Exception {
      nextPage--;
      emit(state.copyWith(
        actionState: SearchActionState.networkError,
      ));
    }
  }

  void reset() {
    emit(const SearchState());
  }
}
