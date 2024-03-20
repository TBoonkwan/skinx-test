import 'package:skinx_test/features/playlist/presentation/add/add_tracks_screen.dart';
import 'package:skinx_test/features/playlist/presentation/create_new_playlist/create_new_playlist_screen.dart';
import 'package:skinx_test/features/playlist/presentation/playlist_detail/playlist_detail_screen.dart';
import 'package:skinx_test/features/playlist/presentation/playlist_screen.dart';

class PlaylistRoute {
  static String playlistScreen = '/PlaylistScreen';
  static String createPlaylistScreen = '/CreatePlaylistScreen';
  static String playlistDetail = '/PlaylistScreen/Detail';
  static String addTracks = '/PlaylistScreen/AddTracks';

  static final screens = {
    playlistScreen: (context) => const PlaylistScreen(),
    createPlaylistScreen: (context) => const CreateNewPlaylistScreen(),
    playlistDetail: (context) => const PlaylistDetailScreen(),
    addTracks: (context) => const AddTracksScreen(),
  };
}
