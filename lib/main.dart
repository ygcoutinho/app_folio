import 'package:app_folio/pages/about_dev.dart';
import 'package:app_folio/pages/exercices_page.dart';
import 'package:app_folio/pages/main_page.dart';
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
        AppRoutes.HOME: (ctx) => const MainPage(),
        AppRoutes.ABOUT_DEV: (ctx) => const AboutDev(),
        AppRoutes.EXERCISES: (ctx) => const ExercisesPage(),
      },
    );
  }
}
