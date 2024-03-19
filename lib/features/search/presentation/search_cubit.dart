import "package:dio/dio.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:get_storage/get_storage.dart";
import "package:oauth2_client/access_token_response.dart";
import "package:skinx_test/core/constants/app_constants.dart";
import "package:skinx_test/core/exception/app_exception.dart";
import "package:skinx_test/features/authentication/data/model/user_profile_response.dart";
import "package:skinx_test/features/authentication/data/repository/spotify_authentication_repository.dart";
import "package:skinx_test/features/search/data/model/search_request.dart";
import "package:skinx_test/features/search/domain/entity/search_ui_model.dart";
import "package:skinx_test/features/search/domain/usecase/search_usecase.dart";
import "package:skinx_test/features/search/presentation/search_state.dart";

class SearchCubit extends Cubit<SearchState> {
  IGetSearchUseCase searchUseCase;
  SpotifyAuthenticationRepository spotifyRepository;

  num totalPage = 0;
  num nextPage = 0;

  SearchCubit({
    required this.searchUseCase,
    required this.spotifyRepository,
  }) : super(const SearchState());

  Future<void> authentication() async {
    final GetStorage storage = GetStorage();

    AccessTokenResponse response = await spotifyRepository.authentication();

    storage.write(AppConstants.accessToken, response.accessToken);
    storage.write(AppConstants.refreshToken, response.refreshToken);
  }

  Future<SearchModel> getMySearch({
    required UserProfileResponse userProfileResponse,
  }) async {
    try {
      return await searchUseCase.getSearch(
        request: MySearchRequest(
          offset: nextPage,
          limit: 20,
          userId: userProfileResponse.id.toString(),
        ),
      );
    } on DioException {
      throw AppException();
    }
  }

  Future initial() async {
    nextPage = 0;

    emit(
      state.copyWith(eventState: SearchEventState.initial),
    );

    await authentication();

    UserProfileResponse userProfileResponse =
        await spotifyRepository.getUserProfile();

    emit(state.copyWith(
      userProfileResponse: userProfileResponse,
    ));

    await spotifyRepository.saveUserProfile(
        userProfileResponse: userProfileResponse);

    try {
      final SearchModel model =
          await getMySearch(userProfileResponse: userProfileResponse);

      totalPage = model.totalPage;

      List<SearchUIModel> uiModel = model.uiModel;

      if (uiModel.isEmpty == true) {
        emit(
          state.copyWith(
            search: [],
            eventState: SearchEventState.empty,
          ),
        );
      } else {
        emit(
          state.copyWith(
            search: uiModel,
            eventState: SearchEventState.success,
          ),
        );
      }
    } on Exception {
      emit(state.copyWith(
        actionState: SearchActionState.networkError,
        eventState: SearchEventState.networkError,
      ));
    }
  }

// Future loadMoreItem() async {
//   if (nextPage == totalPage ||
//       state.actionState == TodoListPageActionState.loadMore) {
//     return;
//   }
//
//   nextPage++;
//
//   emit(
//     state.copyWith(
//       actionState: TodoListPageActionState.loadMore,
//     ),
//   );
//
//   try {
//     final SearchModel model = await fetchTodoList();
//
//     emit(
//       state.copyWith(
//         actionState: TodoListPageActionState.none,
//       ),
//     );
//
//     emit(
//       state.copyWith(
//         taskList: model.uiModel,
//       ),
//     );
//   } on Exception {
//     nextPage--;
//     emit(state.copyWith(
//       actionState: TodoListPageActionState.networkError,
//     ));
//   }
// }

  void reset() {
    emit(const SearchState());
  }
}
