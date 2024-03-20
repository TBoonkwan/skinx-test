import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:oauth2_client/access_token_response.dart';
import 'package:skinx_test/features/authentication/data/model/user_profile_response.dart';
import 'package:skinx_test/features/authentication/data/repository/spotify_authentication_repository.dart';
import 'package:skinx_test/features/playlist/domain/entity/playlist_ui_model.dart';
import 'package:skinx_test/features/playlist/domain/repository/playlist_repository.dart';
import 'package:skinx_test/features/playlist/domain/usecase/get_playlist_usecase.dart';
import 'package:skinx_test/features/playlist/presentation/playlist_cubit.dart';
import 'package:skinx_test/features/playlist/presentation/playlist_state.dart';

import 'playlist_cubit_test.mocks.dart';

@GenerateMocks([
  IGetPlaylistUseCase,
  IPlaylistRepository,
  SpotifyAuthenticationRepository,
])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late PlaylistCubit pageCubit;

  late MockIGetPlaylistUseCase mockUseCase;
  late MockIPlaylistRepository mockRepository;
  late MockSpotifyAuthenticationRepository mockSpotify;

  setUp(
    () async {
      mockUseCase = MockIGetPlaylistUseCase();
      mockRepository = MockIPlaylistRepository();
      mockSpotify = MockSpotifyAuthenticationRepository();
      pageCubit = PlaylistCubit(
          playlistRepository: mockRepository,
          playlistUseCase: mockUseCase,
          spotifyRepository: mockSpotify);
    },
  );

  group("test get playlist cubit", () {
    blocTest<PlaylistCubit, PlaylistState>(
      'emits initial and update when get playlist',
      build: () {
        when(mockSpotify.authentication()).thenAnswer((realInvocation) async => AccessTokenResponse());
        when(mockSpotify.getUserProfile()).thenAnswer((realInvocation) async => UserProfileResponse(id: ""));
        when(mockSpotify.saveUserProfile(userProfileResponse: anyNamed("userProfileResponse"))).thenAnswer((realInvocation) async => Future.value);
        when(mockUseCase.getPlaylist(request: anyNamed("request"))).thenAnswer(
            (realInvocation) async => PlaylistModel(
                    nextPage: 0,
                    totalPage: 0,
                    uiModel: <PlaylistUIModel>[
                      const PlaylistUIModel(
                          id: "id",
                          title: "title",
                          subTitle: "subTitle",
                          image: "image")
                    ]));

        return PlaylistCubit(
            playlistRepository: mockRepository,
            playlistUseCase: mockUseCase,
            spotifyRepository: mockSpotify);
      },
      act: (bloc) => bloc.initial(),
      expect: () => <PlaylistState>[
        const PlaylistState(
            playlist: [],
            playlistDetailResponse: null,
            userProfileResponse: null,
            eventState: PlaylistEventState.initial,
            actionState: PlaylistActionState.none),
        PlaylistState(
            playlist: const [],
            playlistDetailResponse: null,
            userProfileResponse: UserProfileResponse(id: ""),
            eventState: PlaylistEventState.initial,
            actionState: PlaylistActionState.none),
        PlaylistState(
            playlist: const [
              PlaylistUIModel(
                  id: "id",
                  title: "title",
                  subTitle: "subTitle",
                  image: "image")
            ],
            playlistDetailResponse: null,
            userProfileResponse: UserProfileResponse(id: ""),
            eventState: PlaylistEventState.success,
            actionState: PlaylistActionState.none),
      ],
    );
  });

  tearDown(() => pageCubit.close());
}
