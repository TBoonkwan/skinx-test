import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:skinx_test/features/playlist/data/model/detail/playlist_detail_response.dart";
import "package:skinx_test/features/playlist/presentation/playlist_detail/playlist_detail_cubit.dart";
import "package:skinx_test/features/playlist/presentation/playlist_detail/playlist_detail_state.dart";
import "package:skinx_test/features/search/config/search_route.dart";
import "package:skinx_test/shared/loading/loading_indicator.dart";
import "package:skinx_test/theme/color/app_color.dart";

class PlaylistDetailScreen extends StatefulWidget {
  const PlaylistDetailScreen({super.key});

  @override
  State<PlaylistDetailScreen> createState() => _PlaylistDetailScreenState();
}

class _PlaylistDetailScreenState extends State<PlaylistDetailScreen> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final arguments = ModalRoute.of(context)?.settings.arguments;
      if (arguments != null) {
        final String playlistId = arguments as String;
        final PlaylistDetailCubit cubit = context.read<PlaylistDetailCubit>();
        cubit.getPlaylistDetail(playlistId: playlistId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final PlaylistDetailCubit cubit = context.read<PlaylistDetailCubit>();

    return BlocListener<PlaylistDetailCubit, PlaylistDetailState>(
      listenWhen: (prev, current) => current.actionState != prev.actionState,
      listener: (context, state) {},
      child: Scaffold(
        backgroundColor: AppColor.primaryTextColor,
        body: BlocConsumer<PlaylistDetailCubit, PlaylistDetailState>(
          listenWhen: (prev, current) => current.eventState != prev.eventState,
          listener: (context, state) async {},
          builder: (BuildContext context, PlaylistDetailState state) {
            if (state.eventState == PlaylistDetailEventState.loading) {
              return LoadingIndicator(
                size: Size(
                  MediaQuery.sizeOf(context).width,
                  MediaQuery.sizeOf(context).height * 0.7,
                ),
              );
            }

            if (state.eventState == PlaylistDetailEventState.success) {
              final PlaylistDetailResponse? response = state.playlistDetailResponse;
              final String image = cubit.getImageUrl(response?.images);

              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    toolbarHeight: 56,
                    expandedHeight: 216,
                    collapsedHeight: 56,
                    centerTitle: true,
                    pinned: true,
                    backgroundColor: AppColor.primaryTextColor,
                    leading: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: AppColor.tertiaryTextColor,
                      ),
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text(
                        response?.name ?? "",
                        style: const TextStyle(color: Colors.white),
                      ),
                      collapseMode: CollapseMode.parallax,
                      background: image.isEmpty == true
                          ? const Icon(Icons.photo, size: 160)
                          : Opacity(
                              opacity: 0.7,
                              child: Image.network(
                                image,
                                height: 160,
                                fit: BoxFit.cover,
                              ),
                            ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        const SizedBox(
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(SearchRoute.searchScreen);
                            },
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                backgroundColor: Colors.white),
                            child: const Text(
                              "Add to this playlist",
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          primary: false,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          itemBuilder: (BuildContext context, int index) {
                            final item = response?.tracks?.items?[index];
                            return ListTile(
                              leading: Image.network(item?.track?.album?.images?.first.url ?? ""),
                              title: Text(
                                item?.track?.name ?? "",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: Colors.white),
                              ),
                              subtitle: Text(
                                item?.track?.artists?.first?.name ?? "",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(color: AppColor.tertiaryTextColor),
                              ),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.more_horiz,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider(
                              height: 1,
                              color: Colors.transparent,
                            );
                          },
                          itemCount: response?.tracks?.items?.length ?? 0,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
