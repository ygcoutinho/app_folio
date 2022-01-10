import 'package:app_folio/components/aboutdev/abilities_and_competences.dart';
import 'package:app_folio/components/aboutdev/about_dev_card.dart';
import 'package:app_folio/components/aboutdev/favorite_tecnologies_scroll.dart';
import 'package:app_folio/components/appbar/appbar_content.dart';
import 'package:app_folio/components/bottomnavbar/bottom_navbar_custom.dart';
import 'package:flutter/material.dart';

class AboutDev extends StatefulWidget {
  const AboutDev({Key? key}) : super(key: key);

  @override
  _AboutDevState createState() => _AboutDevState();
}

class _AboutDevState extends State<AboutDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarContent(),
      ),
      bottomNavigationBar: const BottomNavBarCustom(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            AboutDevCard(),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Text('Tecnogias Favoritas', textAlign: TextAlign.start, style: TextStyle(fontSize: 14)),
            ),
            FavoriteTecnologiesScroll(),
            AabilitiesAndCompetences(),
          ],
        ),
      ),
    );
  }
}
