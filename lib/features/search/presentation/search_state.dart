import "package:equatable/equatable.dart";
import "package:skinx_test/features/search/domain/entity/search_ui_model.dart";

class SearchState extends Equatable {
  final SearchEventState? eventState;
  final SearchActionState? actionState;
  final List<SearchUIModel> search;

  final String? query;

  const SearchState({
    this.eventState = SearchEventState.none,
    this.actionState = SearchActionState.none,
    this.search = const [],
    this.query = "",
  });

  @override
  List<Object?> get props => [
        eventState,
        actionState,
        search,
        query,
      ];

  SearchState copyWith({
    SearchEventState? eventState,
    SearchActionState? actionState,
    List<SearchUIModel>? search,
    String? query,
  }) {
    return SearchState(
      eventState: eventState ?? this.eventState,
      actionState: actionState ?? this.actionState,
      search: search ?? this.search,
      query: query ?? this.query,
    );
  }
}

enum SearchEventState { initial, empty, networkError, success, none }

enum SearchActionState {
  networkError,
  loadMore,
  none,
}
