import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:skinx_test/features/album/domain/entity/album_ui_model.dart";
import "package:skinx_test/features/playlist/config/playlist_route.dart";
import "package:skinx_test/features/playlist/presentation/add/add_tracks_cubit.dart";
import "package:skinx_test/features/playlist/presentation/add/add_tracks_state.dart";
import "package:skinx_test/theme/color/app_color.dart";

class AddTracksScreen extends StatefulWidget {
  const AddTracksScreen({super.key});

  @override
  State<AddTracksScreen> createState() => _AddTracksScreenState();
}

class _AddTracksScreenState extends State<AddTracksScreen> {
  BuildContext? dialogContext;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final arguments = ModalRoute.of(context)?.settings.arguments;

      if (arguments != null) {
        final List<AlbumTrack> tracks = arguments as List<AlbumTrack>;
        context.read<AddTracksCubit>()
          ..setupTrack(tracks)
          ..getPlaylist();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddTracksCubit, AddTracksState>(
      listenWhen: (prev, current) => current.actionState != prev.actionState,
      listener: (context, state) async {
        switch (state.actionState) {
          case AddTracksPageActionState.success:
            if (dialogContext != null) {
              Navigator.of(dialogContext!).pop();
            }
            AddTracksCubit cubit = context.read<AddTracksCubit>();
            await Navigator.of(context).pushNamed(
              PlaylistRoute.playlistDetail,
              arguments: cubit.playlistId,
            );
            cubit.getPlaylist();
            break;
          case AddTracksPageActionState.submit:
            showDialog(
              context: context,
              builder: (context) {
                dialogContext = context;
                return const SizedBox(
                  width: 80,
                  height: 80,
                  child: Center(child: CircularProgressIndicator()),
                );
              },
            );
            break;
          default:
        }
      },
      child: Scaffold(
        backgroundColor: AppColor.primaryTextColor,
        appBar: AppBar(
          backgroundColor: AppColor.primaryTextColor,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColor.tertiaryTextColor,
              )),
          title: const Text(
            "Add to playlist",
            style: TextStyle(
              color: AppColor.tertiaryTextColor,
            ),
          ),
        ),
        body: BlocBuilder<AddTracksCubit, AddTracksState>(
          builder: (BuildContext context, AddTracksState state) {
            if (state.eventState == AddTracksPageEventState.loading) {
              return const SizedBox();
            } else {
              return ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  final item = state.playlists[index];
                  return ListTile(
                    onTap: () {
                      AddTracksCubit cubit = context.read<AddTracksCubit>();

                      Navigator.of(context).pushNamed(
                        PlaylistRoute.playlistDetail,
                        arguments: item.id,
                      );

                      cubit.getPlaylist();
                    },
                    leading: Builder(builder: (context) {
                      if (item.image.isEmpty == true) {
                        return const Icon(
                          Icons.photo,
                          size: 48,
                        );
                      }
                      return Image.network(
                        item.image,
                        fit: BoxFit.cover,
                        width: 48,
                        height: 48,
                      );
                    }),
                    title: Text(
                      item.title ?? "",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.white),
                    ),
                    subtitle: Text(
                      item.subTitle ?? "",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: AppColor.tertiaryTextColor),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        context.read<AddTracksCubit>().addToPlaylist(
                              playlistId: item.id,
                            );
                      },
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 1,
                    color: Colors.transparent,
                  );
                },
                itemCount: state.playlists.length,
              );
            }
          },
        ),
      ),
    );
  }
}
