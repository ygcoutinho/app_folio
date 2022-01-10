import 'package:app_folio/components/AppBar/appbar_content.dart';
import 'package:app_folio/components/bottomnavbar/bottom_navbar_custom.dart';
import 'package:app_folio/components/card/card_widget.dart';
import 'package:app_folio/data/dummy_data.dart';
import 'package:app_folio/routes/app_routes.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  final List<String> cardRoutes = [AppRoutes.ANIMATIONS, AppRoutes.MOCKUP_READING, AppRoutes.PLAYGROUND];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarContent(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 7, right: 7),
        child: ListView.builder(
          itemCount: DUMMY_DATA.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CardWidget(cardItems: DUMMY_DATA[index], route: cardRoutes[index]),
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomNavBarCustom(),
    );
  }
}
