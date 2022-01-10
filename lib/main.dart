import 'package:app_folio/pages/about_dev.dart';
import 'package:app_folio/pages/animations_page.dart';
import 'package:app_folio/pages/main_page.dart';
import 'package:app_folio/pages/mockup_reading_page.dart';
import 'package:app_folio/pages/playground_page.dart';
import 'package:app_folio/routes/app_routes.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      routes: {
        AppRoutes.HOME: (ctx) => MainPage(),
        AppRoutes.ABOUT_DEV: (ctx) => const AboutDev(),
        AppRoutes.ANIMATIONS: (ctx) => const AnimationsPage(),
        AppRoutes.MOCKUP_READING: (ctx) => const MockupReading(),
        AppRoutes.PLAYGROUND: (ctx) => const PlaygroundPage(),
      },
    );
  }
}
