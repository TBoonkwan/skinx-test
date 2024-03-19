import "package:equatable/equatable.dart";
import "package:skinx_test/features/playlist/domain/entity/playlist_ui_model.dart";

class PlaylistState extends Equatable {
  final PlaylistEventState? eventState;
  final PlaylistActionState? actionState;

  final List<PlaylistUIModel> taskList;

  const PlaylistState({
    this.eventState = PlaylistEventState.none,
    this.actionState = PlaylistActionState.none,
    this.taskList = const [],
  });

  @override
  List<Object?> get props => [
        eventState,
        actionState,
        taskList,
      ];

  PlaylistState copyWith({
    PlaylistEventState? eventState,
    PlaylistActionState? actionState,
    List<PlaylistUIModel>? taskList,
  }) {
    return PlaylistState(
      eventState: eventState ?? this.eventState,
      actionState: actionState ?? this.actionState,
      taskList: taskList ?? this.taskList,
    );
  }
}

enum PlaylistEventState { initial, empty, networkError, success, none }

enum PlaylistActionState {
  networkError,
  none,
}
