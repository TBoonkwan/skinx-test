import "package:equatable/equatable.dart";

class CreateNewPlaylistState extends Equatable {
  final CreateNewPlaylistPageEventState? eventState;
  final CreateNewPlaylistPageActionState? actionState;

  const CreateNewPlaylistState({
    this.eventState = CreateNewPlaylistPageEventState.loading,
    this.actionState = CreateNewPlaylistPageActionState.none,
  });

  @override
  List<Object?> get props => [
        eventState,
        actionState,
      ];

  CreateNewPlaylistState copyWith({
    CreateNewPlaylistPageEventState? eventState,
    CreateNewPlaylistPageActionState? actionState,
  }) {
    return CreateNewPlaylistState(
      eventState: eventState ?? this.eventState,
      actionState: actionState ?? this.actionState,
    );
  }
}

enum CreateNewPlaylistPageEventState { loading, success }

enum CreateNewPlaylistPageActionState {
  success,
  submit,
  error,
  none,
}
