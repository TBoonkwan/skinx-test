import 'package:skinx_test/features/authentication/data/model/user_profile_response.dart';

abstract class AuthenticationDataSource {
  Future<UserProfileResponse> getUserProfile();
}
