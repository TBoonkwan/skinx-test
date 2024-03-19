import 'package:flutter/material.dart';
import 'package:skinx_test/features/playlist/presentation/playlist_screen.dart';
import 'package:skinx_test/theme/color/app_color.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [
          const PlaylistScreen(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: AppColor.primaryColor,
        child: DefaultTabController(
          length: 4,
          child: TabBar(
            dividerHeight: 0,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.transparent,
            unselectedLabelColor: AppColor.secondaryTextColor,
            labelColor: AppColor.tertiaryTextColor,
            onTap: (value) {},
            tabs: <Tab>[
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Sample",
                icon: Icon(Icons.play_circle),
              ),
              Tab(
                text: "Explore",
                icon: Icon(Icons.explore),
              ),
              Tab(
                text: "Library",
                icon: Icon(Icons.library_music_sharp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
