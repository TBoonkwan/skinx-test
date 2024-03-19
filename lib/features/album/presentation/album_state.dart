import "package:equatable/equatable.dart";
import "package:skinx_test/features/album/domain/entity/album_ui_model.dart";

class AlbumState extends Equatable {
  final AlbumEventState? eventState;
  final AlbumActionState? actionState;

  final AlbumUIModel? albumDetail;

  const AlbumState({
    this.eventState = AlbumEventState.none,
    this.actionState = AlbumActionState.none,
    this.albumDetail,
  });

  @override
  List<Object?> get props => [
        eventState,
        actionState,
        albumDetail,
      ];

  AlbumState copyWith({
    AlbumEventState? eventState,
    AlbumActionState? actionState,
    AlbumUIModel? albumDetail,
  }) {
    return AlbumState(
      eventState: eventState ?? this.eventState,
      actionState: actionState ?? this.actionState,
      albumDetail: albumDetail ?? this.albumDetail,
    );
  }
}

enum AlbumEventState { initial, empty, networkError, success, none }

enum AlbumActionState {
  networkError,
  loadMore,
  none,
}
