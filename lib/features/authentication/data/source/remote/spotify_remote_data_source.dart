import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:skinx_test/core/constants/app_constants.dart';
import 'package:skinx_test/features/authentication/data/model/user_profile_response.dart';
import 'package:skinx_test/features/authentication/data/source/authentication_data_source.dart';

class SpotifyRemoteDataSource extends AuthenticationDataSource {
  final Dio dio;

  SpotifyRemoteDataSource({required this.dio});

  @override
  Future<UserProfileResponse> getUserProfile() async {
    final response = await dio.get(
      "me",
    );

    return UserProfileResponse.fromJson(response.data);
  }

  @override
  Future saveUserProfile({
    required UserProfileResponse userProfileResponse,
  }) async {
    GetStorage storage = GetStorage();
    return await storage.write(
      AppConstants.userProfile,
      userProfileResponse.toJson(),
    );
  }
}
