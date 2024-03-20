import "package:equatable/equatable.dart";
import "package:skinx_test/features/album/domain/entity/album_ui_model.dart";
import "package:skinx_test/features/playlist/domain/entity/playlist_ui_model.dart";

class AddTracksState extends Equatable {
  final AddTracksPageEventState? eventState;
  final AddTracksPageActionState? actionState;
  final List<AlbumTrack> tracks;

  final List<PlaylistUIModel> playlists;

  const AddTracksState({
    this.eventState = AddTracksPageEventState.loading,
    this.actionState = AddTracksPageActionState.none,
    this.tracks = const [],
    this.playlists = const [],
  });

  @override
  List<Object?> get props => [
        eventState,
        actionState,
        tracks,
        playlists,
      ];

  AddTracksState copyWith({
    AddTracksPageEventState? eventState,
    AddTracksPageActionState? actionState,
    List<AlbumTrack>? tracks,
    List<PlaylistUIModel>? playlists,
  }) {
    return AddTracksState(
      eventState: eventState ?? this.eventState,
      actionState: actionState ?? this.actionState,
      tracks: tracks ?? this.tracks,
      playlists: playlists ?? this.playlists,
    );
  }
}

enum AddTracksPageEventState { loading, success }

enum AddTracksPageActionState {
  success,
  submit,
  fail,
  none,
}
