import "package:equatable/equatable.dart";
import "package:skinx_test/features/authentication/data/model/user_profile_response.dart";
import "package:skinx_test/features/playlist/domain/entity/playlist_ui_model.dart";

class PlaylistState extends Equatable {
  final PlaylistEventState? eventState;
  final PlaylistActionState? actionState;

  final List<PlaylistUIModel> playlist;

  final UserProfileResponse? userProfileResponse;

  const PlaylistState(
      {this.eventState = PlaylistEventState.none,
      this.actionState = PlaylistActionState.none,
      this.playlist = const [],
      this.userProfileResponse});

  @override
  List<Object?> get props => [
        eventState,
        actionState,
        playlist,
        userProfileResponse,
      ];

  PlaylistState copyWith({
    PlaylistEventState? eventState,
    PlaylistActionState? actionState,
    List<PlaylistUIModel>? playlist,
    UserProfileResponse? userProfileResponse,
  }) {
    return PlaylistState(
      eventState: eventState ?? this.eventState,
      actionState: actionState ?? this.actionState,
      playlist: playlist ?? this.playlist,
      userProfileResponse: userProfileResponse ?? this.userProfileResponse,
    );
  }
}

enum PlaylistEventState { initial, empty, networkError, success, none }

enum PlaylistActionState {
  networkError,
  none,
}
