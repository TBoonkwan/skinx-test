import "package:dio/dio.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:skinx_test/core/exception/app_exception.dart";
import "package:skinx_test/features/album/domain/usecase/album_usecase.dart";
import "package:skinx_test/features/album/presentation/album_state.dart";
import "package:skinx_test/features/search/data/model/search_request.dart";
import "package:skinx_test/features/search/domain/entity/search_ui_model.dart";
import "package:skinx_test/features/search/domain/usecase/search_usecase.dart";
import "package:skinx_test/features/search/presentation/search_state.dart";

class AlbumCubit extends Cubit<AlbumState> {
  IGetAlbumUseCase searchUseCase;

  String query = "";

  num totalPage = 0;
  num nextPage = 0;

  AlbumCubit({
    required this.searchUseCase,
  }) : super(const AlbumState());

  Future<SearchModel> getMySearch() async {
    try {
      return await searchUseCase.getAlbumDetail(
        request: MySearchRequest(
          query: query,
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
          eventState: AlbumEventState.empty,
        ),
      );
      return;
    }

    query = text;
    nextPage = 0;

    emit(
      state.copyWith(eventState: AlbumEventState.initial),
    );

    try {
      final SearchModel model = await getMySearch();

      totalPage = model.totalPage;

      List<SearchUIModel> uiModel = model.uiModel;

      if (uiModel.isEmpty == true) {
        emit(
          state.copyWith(
            search: [],
            eventState: AlbumEventState.empty,
          ),
        );
      } else {
        emit(
          state.copyWith(
            search: uiModel,
            eventState: AlbumEventState.success,
          ),
        );
      }
    } on Exception {
      emit(state.copyWith(
        actionState: AlbumActionState.networkError,
        eventState: AlbumEventState.networkError,
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
        actionState: AlbumActionState.loadMore,
      ),
    );

    try {
      final SearchModel model = await getMySearch();

      emit(
        state.copyWith(
          actionState: AlbumActionState.none,
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
        actionState: AlbumActionState.networkError,
      ));
    }
  }

  void reset() {
    emit(const AlbumState());
  }
}
