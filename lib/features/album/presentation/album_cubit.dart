import "package:dio/dio.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:skinx_test/core/exception/app_exception.dart";
import "package:skinx_test/features/album/data/model/album_request.dart";
import "package:skinx_test/features/album/domain/entity/album_ui_model.dart";
import "package:skinx_test/features/album/domain/usecase/album_usecase.dart";
import "package:skinx_test/features/album/presentation/album_state.dart";

class AlbumCubit extends Cubit<AlbumState> {
  IGetAlbumUseCase searchUseCase;

  String id = "";

  AlbumCubit({
    required this.searchUseCase,
  }) : super(const AlbumState());

  Future<AlbumUIModel?> getAlbumDetail() async {
    try {
      return await searchUseCase.getAlbumDetail(
        request: AlbumRequest(
          albumId: id,
        ),
      );
    } on DioException {
      throw AppException();
    }
  }

  void setupAlbumId(
    String id,
  ) {
    this.id = id;
  }

  Future initial() async {
    emit(
      state.copyWith(eventState: AlbumEventState.initial),
    );

    try {
      final AlbumUIModel? model = await getAlbumDetail();

      if (model == null) {
        emit(
          state.copyWith(
            albumDetail: null,
            eventState: AlbumEventState.empty,
          ),
        );
      } else {
        emit(
          state.copyWith(
            albumDetail: model,
            eventState: AlbumEventState.success,
          ),
        );
      }
    } on Exception {
      emit(state.copyWith(
        actionState: AlbumActionState.networkError,
        eventState: AlbumEventState.networkError,
      ));
      emit(state.copyWith(
        actionState: AlbumActionState.none,
      ));
    }
  }

  void reset() {
    emit(const AlbumState());
  }
}
