import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:oauth2_client/access_token_response.dart';
import 'package:oauth2_client/spotify_oauth2_client.dart';
import 'package:skinx_test/core/configuration/app_config.dart';
import 'package:skinx_test/features/authentication/data/model/user_profile_response.dart';
import 'package:skinx_test/features/authentication/data/source/remote/spotify_remote_data_source.dart';
import 'package:skinx_test/features/authentication/domain/authentication_repository.dart';

class SpotifyAuthenticationRepository extends AuthenticationRepository {
  final SpotifyRemoteDataSource spotifyDataSource;

  SpotifyAuthenticationRepository({
    required this.spotifyDataSource,
  });

  @override
  Future<AccessTokenResponse> authentication() async {
    final client = SpotifyOAuth2Client(
      customUriScheme: ConfigConstants.customUriScheme,
      redirectUri: ConfigConstants.redirectUri,
    );

    final authorizationResponse = await client.requestAuthorization(
      clientId: dotenv.env[ConfigConstants.clientId].toString(),
      // customParams: {'show_dialog': 'true'},
      // state: getRandomString(16),
      enableState: false,
      scopes: [
        'user-read-private',
        'user-read-email',
        'playlist-modify-public',
        'playlist-modify-private',
      ],
    );
    final code = authorizationResponse.code;

    final response = await client.requestAccessToken(
      code: code.toString(),
      clientId: dotenv.env[ConfigConstants.clientId].toString(),
      clientSecret: dotenv.env[ConfigConstants.clientSecret].toString(),
    );

    return response;
  }

  @override
  Future<AccessTokenResponse> refreshToken({
    required String refreshToken,
  }) async {
    final client = SpotifyOAuth2Client(
      customUriScheme: ConfigConstants.customUriScheme,
      redirectUri: ConfigConstants.redirectUri,
    );

    final response = await client.refreshToken(
      refreshToken,
      clientId: dotenv.env[ConfigConstants.clientId].toString(),
      clientSecret: dotenv.env[ConfigConstants.clientSecret].toString(),
      scopes: [
        'user-read-private',
        'user-read-email',
        'playlist-modify-public',
        'playlist-modify-private',
      ],
    );

    return response;
  }

  @override
  Future<UserProfileResponse> getUserProfile() async {
    return await spotifyDataSource.getUserProfile();
  }

  @override
  Future saveUserProfile({
    required UserProfileResponse userProfileResponse,
  }) async {
    return await spotifyDataSource.saveUserProfile(
      userProfileResponse: userProfileResponse,
    );
  }
}
