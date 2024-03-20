import 'package:flutter/material.dart';
import 'package:skinx_test/theme/color/app_color.dart';

class MediaPlayerScreen extends StatelessWidget {
  const MediaPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        color: AppColor.primaryTextColor,
      ),
      title: Text(
        "Empty Room",
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: Colors.white),
      ),
      subtitle: Text(
        "Health",
        style: Theme.of(context)
            .textTheme
            .labelMedium
            ?.copyWith(color: AppColor.tertiaryTextColor),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(
              Icons.cast,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
