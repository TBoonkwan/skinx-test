import "package:equatable/equatable.dart";
import "package:skinx_test/features/playlist/data/model/detail/playlist_detail_response.dart";

class PlaylistDetailState extends Equatable {
  final PlaylistDetailEventState? eventState;
  final PlaylistDetailActionState? actionState;

  final PlaylistDetailResponse? playlistDetailResponse;

  const PlaylistDetailState({
    this.eventState = PlaylistDetailEventState.loading,
    this.actionState = PlaylistDetailActionState.none,
    this.playlistDetailResponse,
  });

  @override
  List<Object?> get props => [
        eventState,
        actionState,
        playlistDetailResponse,
      ];

  PlaylistDetailState copyWith({
    PlaylistDetailEventState? eventState,
    PlaylistDetailActionState? actionState,
    PlaylistDetailResponse? playlistDetailResponse,
  }) {
    return PlaylistDetailState(
      eventState: eventState ?? this.eventState,
      actionState: actionState ?? this.actionState,
      playlistDetailResponse: playlistDetailResponse ?? this.playlistDetailResponse,
    );
  }
}

enum PlaylistDetailEventState { loading, success }

enum PlaylistDetailActionState {
  success,
  fail,
  none,
}
