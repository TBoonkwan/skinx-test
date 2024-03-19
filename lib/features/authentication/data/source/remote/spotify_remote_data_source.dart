import 'package:dio/dio.dart';
import 'package:skinx_test/features/authentication/data/model/user_profile_response.dart';
import 'package:skinx_test/features/authentication/data/source/authentication_data_source.dart';

class SpotifyRemoteDataSource extends AuthenticationDataSource {
  final Dio dio;

  SpotifyRemoteDataSource({required this.dio});

  @override
  Future<UserProfileResponse> getUserProfile() async {
    final response = await dio.get(
      "https://api.spotify.com/v1/me",
    );

    return UserProfileResponse.fromJson(response.data);
  }
}
