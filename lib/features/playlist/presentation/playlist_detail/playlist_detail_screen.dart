import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:skinx_test/features/playlist/presentation/playlist_detail/playlist_detail_cubit.dart";
import "package:skinx_test/features/playlist/presentation/playlist_detail/playlist_detail_state.dart";
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
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    final PlaylistDetailCubit cubit = context.read<PlaylistDetailCubit>();
    return BlocListener<PlaylistDetailCubit, PlaylistDetailState>(
      listenWhen: (prev, current) => current.actionState != prev.actionState,
      listener: (context, state) {},
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
        ),
        body: SingleChildScrollView(
          child: BlocConsumer<PlaylistDetailCubit, PlaylistDetailState>(
            listenWhen: (prev, current) =>
                current.eventState != prev.eventState,
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

              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
