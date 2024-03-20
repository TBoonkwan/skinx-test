import "package:equatable/equatable.dart";

class PlaylistDetailState extends Equatable {
  final PlaylistDetailEventState? eventState;
  final PlaylistDetailActionState? actionState;

  const PlaylistDetailState({
    this.eventState = PlaylistDetailEventState.loading,
    this.actionState = PlaylistDetailActionState.none,
  });

  @override
  List<Object?> get props => [
        eventState,
        actionState,
      ];

  PlaylistDetailState copyWith({
    PlaylistDetailEventState? eventState,
    PlaylistDetailActionState? actionState,
  }) {
    return PlaylistDetailState(
      eventState: eventState ?? this.eventState,
      actionState: actionState ?? this.actionState,
    );
  }
}

enum PlaylistDetailEventState { loading, success }

enum PlaylistDetailActionState {
  success,
  fail,
  none,
}
