import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:skinx_test/features/playlist/presentation/create_new_playlist/create_new_playlist_cubit.dart";
import "package:skinx_test/features/playlist/presentation/create_new_playlist/create_new_playlist_state.dart";
import "package:skinx_test/theme/color/app_color.dart";

class CreateNewPlaylistScreen extends StatefulWidget {
  const CreateNewPlaylistScreen({super.key});

  @override
  State<CreateNewPlaylistScreen> createState() =>
      _CreateNewPlaylistScreenState();
}

class _CreateNewPlaylistScreenState extends State<CreateNewPlaylistScreen> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  BuildContext? dialogContext;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateNewPlaylistCubit, CreateNewPlaylistState>(
      listenWhen: (prev, current) => current.actionState != prev.actionState,
      listener: (context, state) {
        switch (state.actionState) {
          case CreateNewPlaylistPageActionState.success:
            if (dialogContext != null) {
              Navigator.of(dialogContext!).pop();
            }
            Navigator.of(context).pop(true);
            break;
          case CreateNewPlaylistPageActionState.error:
            Navigator.of(context).pop();
            showDialog(
              context: context,
              builder: (context) {
                dialogContext = context;
                return AlertDialog(
                  title: const Text("Sorry"),
                  content: const Text("Can't create playlist right now"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Close"))
                  ],
                );
              },
            );
            break;
          case CreateNewPlaylistPageActionState.submit:
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
        body: Form(
          key: key,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Give you playlist a name",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: titleController,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white),
                  validator: (String? text) {
                    if (text?.isEmpty == true) {
                      return "Please enter your playlist name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "enter playlist name",
                    labelStyle: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: AppColor.secondaryTextColor),
                  ),
                ),
                TextFormField(
                  controller: descriptionController,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Please enter description",
                    labelStyle: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: AppColor.secondaryTextColor),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  width: 160,
                  height: 80,
                  padding: const EdgeInsets.all(16),
                  child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState?.validate() == true) {
                        CreateNewPlaylistCubit cubit =
                            context.read<CreateNewPlaylistCubit>();
                        cubit.createNewPlaylist(
                          name: titleController.text,
                          description: descriptionController.text,
                        );
                      }
                    },
                    child: const Text(
                      "Create",
                      style: TextStyle(
                        color: AppColor.primaryTextColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
