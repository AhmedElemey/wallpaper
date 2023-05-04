import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallpaper/src/features/home/presentation/pages/wallpaper_details.dart';

import 'shared/theme/theme.dart';
import 'view/bottom_nav_bar/nav_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: WallpaperView(),
    );
  }
}


