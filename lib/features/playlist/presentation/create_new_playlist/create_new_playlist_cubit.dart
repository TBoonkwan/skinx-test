import "package:dio/dio.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:get_storage/get_storage.dart";
import "package:skinx_test/core/constants/app_constants.dart";
import "package:skinx_test/features/authentication/data/model/user_profile_response.dart";
import "package:skinx_test/features/playlist/data/model/create/create_new_playlist_request.dart";
import "package:skinx_test/features/playlist/domain/repository/playlist_repository.dart";
import "package:skinx_test/features/playlist/presentation/create_new_playlist/create_new_playlist_state.dart";

class CreateNewPlaylistCubit extends Cubit<CreateNewPlaylistState> {
  final IPlaylistRepository playlistRepository;

  UserProfileResponse? userProfileResponse;

  CreateNewPlaylistCubit({
    required this.playlistRepository,
  }) : super(const CreateNewPlaylistState()) {
    final GetStorage storage = GetStorage();
    final Map<String, dynamic> userData = storage.read(
      AppConstants.userProfile,
    );
    userProfileResponse = UserProfileResponse.fromJson(userData);
  }

  Future createNewPlaylist({
    required String name,
    required String description,
  }) async {
    try{
      emit(state.copyWith(actionState: CreateNewPlaylistPageActionState.none));
      emit(state.copyWith(actionState: CreateNewPlaylistPageActionState.submit));

      await playlistRepository.createNewPlaylist(
        request: CreateNewPlaylistRequest(
          description: description,
          name: name,
          public: true,
          userId: userProfileResponse?.id ?? "",
        ),
      );
      emit(state.copyWith(actionState: CreateNewPlaylistPageActionState.success));
    }on DioException catch(e){
      emit(state.copyWith(actionState: CreateNewPlaylistPageActionState.error));
    }
  }
}
