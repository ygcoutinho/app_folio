import 'package:app_folio/pages/about_dev.dart';
import 'package:app_folio/pages/animations/animations_page.dart';
import 'package:app_folio/pages/animations/controlled_animation_1.dart';
import 'package:app_folio/pages/animations/controlled_animation_2.dart';
import 'package:app_folio/pages/animations/implicit_animation_1.dart';
import 'package:app_folio/pages/animations/implicit_animation_2.dart';
import 'package:app_folio/pages/main_page.dart';
import 'package:app_folio/pages/mockup/app_financas.dart';
import 'package:app_folio/pages/mockup/mockup_reading_page.dart';
import 'package:app_folio/pages/mockup/tinder_clone.dart';
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
        AppRoutes.ANIMATIONS: (ctx) => AnimationsPage(),
        AppRoutes.MOCKUP_READING: (ctx) => MockupReadingPage(),
        AppRoutes.PLAYGROUND: (ctx) => const PlaygroundPage(),
        AppRoutes.IMPLICIT_ANIMATION_1: (ctx) => const ImplicitAnimation1(),
        AppRoutes.IMPLICIT_ANIMATION_2: (ctx) => const ImplicitAnimation2(),
        AppRoutes.CONTROLLED_ANIMATION_1: (ctx) => const ControlledAnimation1(),
        AppRoutes.CONTROLLED_ANIMATION_2: (ctx) => const ControlledAnimation2(),
        AppRoutes.MOCKUP_APP_FINANCAS: (ctx) => const AppFinancas(),
        AppRoutes.MOCKUP_APP_TINDER: (ctx) => const TinderClone(),
      },
    );
  }
}
