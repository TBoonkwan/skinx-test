import "package:equatable/equatable.dart";
import "package:skinx_test/features/search/domain/entity/search_ui_model.dart";

class AlbumState extends Equatable {
  final AlbumEventState? eventState;
  final AlbumActionState? actionState;

  final List<SearchUIModel> search;

  const AlbumState({
    this.eventState = AlbumEventState.none,
    this.actionState = AlbumActionState.none,
    this.search = const [],
  });

  @override
  List<Object?> get props => [
        eventState,
        actionState,
        search,
      ];

  AlbumState copyWith({
    AlbumEventState? eventState,
    AlbumActionState? actionState,
    List<SearchUIModel>? search,
  }) {
    return AlbumState(
      eventState: eventState ?? this.eventState,
      actionState: actionState ?? this.actionState,
      search: search ?? this.search,
    );
  }
}

enum AlbumEventState { initial, empty, networkError, success, none }

enum AlbumActionState {
  networkError,
  loadMore,
  none,
}
