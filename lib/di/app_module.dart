import 'package:get_it/get_it.dart';
import 'package:skinx_test/core/api/api_manager.dart';
import 'package:skinx_test/features/album/config/album_module.dart';
import 'package:skinx_test/features/authentication/config/authentication_module.dart';
import 'package:skinx_test/features/playlist/config/playlist_module.dart';
import 'package:skinx_test/features/search/config/search_module.dart';

var moduleProvider = GetIt.instance;

class AppModule {
  Future provideModule() async {
    moduleProvider.registerFactory(() => ApiManager().initial());

    AuthenticationModule().provideModule();
    PlaylistModule().provideModule();
    AlbumModule().provideModule();
    SearchModule().provideModule();
  }
}
