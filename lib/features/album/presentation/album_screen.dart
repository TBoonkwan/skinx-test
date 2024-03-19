import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skinx_test/features/album/presentation/album_cubit.dart';
import 'package:skinx_test/features/album/presentation/album_state.dart';
import 'package:skinx_test/features/search/presentation/search_state.dart';
import 'package:skinx_test/shared/loading/loading_indicator.dart';
import 'package:skinx_test/theme/color/app_color.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({
    super.key,
  });

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final arguments = ModalRoute.of(context)?.settings.arguments;
      if (arguments != null) {
        final String id = arguments as String;
        context.read<AlbumCubit>()
          ..setupAlbumId(id)
          ..initial();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final AlbumCubit cubit = context.read<AlbumCubit>();
    return BlocListener<AlbumCubit, AlbumState>(
      listenWhen: (prev, current) => current.actionState != prev.actionState,
      listener: (context, state) async {
        switch (state.actionState) {
          case AlbumActionState.networkError:
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Sorry"),
                content: const Text(
                    "Cannot get your search right now, please try again later"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("OK"),
                  ),
                ],
              ),
            );
            break;
          default:
        }
      },
      child: Scaffold(
        backgroundColor: AppColor.primaryTextColor,
        appBar: AppBar(
          backgroundColor: AppColor.primaryTextColor,
          toolbarHeight: 56,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.tertiaryTextColor,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppColor.tertiaryTextColor,
              ),
            ),
          ],
        ),
        body: NotificationListener<ScrollNotification>(
          onNotification: (scrollNotification) {
            if (scrollNotification.metrics.pixels ==
                scrollNotification.metrics.maxScrollExtent) {
              // cubit.loadMoreItem();
            }
            return true;
          },
          child: BlocConsumer<AlbumCubit, AlbumState>(
            listenWhen: (prev, current) =>
                current.eventState != prev.eventState,
            listener: (context, state) async {},
            builder: (BuildContext context, AlbumState state) {
              if (state.eventState == SearchEventState.initial) {
                return LoadingIndicator(
                  size: Size(
                    MediaQuery.sizeOf(context).width,
                    MediaQuery.sizeOf(context).height * 0.7,
                  ),
                );
              }

              if (state.eventState == SearchEventState.empty) {
                return SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.7,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Center(
                      child: Text(
                        "No Search",
                        style: TextStyle(
                          color: AppColor.tertiaryTextColor,
                        ),
                      ),
                    ),
                  ),
                );
              }

              if (state.eventState == SearchEventState.success) {
                return Container();
              }

              if (state.eventState == SearchEventState.networkError) {
                return SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.7,
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        cubit.initial();
                      },
                      child: const Text(
                        "Try Again",
                      ),
                    ),
                  ),
                );
              }

              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
