import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallpaper/src/features/favorite/presentation/controllers/db_helper.dart';

import 'shared/theme/theme.dart';
import 'view/bottom_nav_bar/nav_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const ProviderScope(child: MyApp()));
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
      home: const BottomNavBar(),
    );
  }
}
