import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:skinx_test/core/provider/app_provider.dart';
import 'package:skinx_test/core/route/app_route.dart';
import 'package:skinx_test/di/app_module.dart';
import 'package:skinx_test/features/main_screen.dart';
import 'package:skinx_test/features/playlist/config/playlist_route.dart';
import 'package:skinx_test/features/playlist/presentation/playlist_screen.dart';
import 'package:skinx_test/theme/color/app_color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  await dotenv.load(fileName: "assets/.env");

  await AppModule().provideModule();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppProvider().provider,
      child: MaterialApp(
        initialRoute: "/",
        navigatorObservers: [routeObserver],
        routes: AppRoute().screens,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: AppColor.primaryColor,
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            elevation: 8,
            backgroundColor: AppColor.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            iconSize: 32,
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColor.primaryColor,
            brightness: Brightness.light,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primaryColor,
            ),
          ),
          useMaterial3: true,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
