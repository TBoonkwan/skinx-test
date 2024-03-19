import 'package:oauth2_client/access_token_response.dart';
import 'package:skinx_test/features/authentication/data/model/user_profile_response.dart';

abstract class AuthenticationRepository {
  Future<AccessTokenResponse> authentication();

  Future<UserProfileResponse> getUserProfile();

  Future saveUserProfile({
    required UserProfileResponse userProfileResponse,
  });
}
