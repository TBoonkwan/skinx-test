import "package:equatable/equatable.dart";
import "package:skinx_test/features/authentication/data/model/user_profile_response.dart";
import "package:skinx_test/features/search/domain/entity/search_ui_model.dart";

class SearchState extends Equatable {
  final SearchEventState? eventState;
  final SearchActionState? actionState;

  final List<SearchUIModel> search;

  final UserProfileResponse? userProfileResponse;

  const SearchState(
      {this.eventState = SearchEventState.none,
      this.actionState = SearchActionState.none,
      this.search = const [],
      this.userProfileResponse});

  @override
  List<Object?> get props => [
        eventState,
        actionState,
        search,
        userProfileResponse,
      ];

  SearchState copyWith({
    SearchEventState? eventState,
    SearchActionState? actionState,
    List<SearchUIModel>? search,
    UserProfileResponse? userProfileResponse,
  }) {
    return SearchState(
      eventState: eventState ?? this.eventState,
      actionState: actionState ?? this.actionState,
      search: search ?? this.search,
      userProfileResponse: userProfileResponse ?? this.userProfileResponse,
    );
  }
}

enum SearchEventState { initial, empty, networkError, success, none }

enum SearchActionState {
  networkError,
  none,
}
