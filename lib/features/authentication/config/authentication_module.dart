import 'package:dio/dio.dart';
import 'package:skinx_test/core/module/app_module.dart';
import 'package:skinx_test/di/app_module.dart';
import 'package:skinx_test/features/authentication/data/repository/spotify_authentication_repository.dart';
import 'package:skinx_test/features/authentication/data/source/remote/spotify_remote_data_source.dart';

class AuthenticationModule extends BaseModule {
  @override
  void provideModule() {
    moduleProvider.registerFactory(
      () => SpotifyAuthenticationRepository(
        spotifyDataSource: moduleProvider.get<SpotifyRemoteDataSource>(),
      ),
    );
    moduleProvider.registerFactory(
      () => SpotifyRemoteDataSource(
        dio: moduleProvider.get<Dio>(),
      ),
    );
  }
}
