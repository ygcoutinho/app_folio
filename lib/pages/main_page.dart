import 'package:app_folio/components/AppBar/appbar_content.dart';
import 'package:app_folio/components/card/card_widget.dart';
import 'package:app_folio/data/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
              child: CardWidget(cardItems: DUMMY_DATA[index]),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFFFFFFF),
        items: const [
          BottomNavigationBarItem(
            label: 'Atividades',
            icon: FaIcon(
              FontAwesomeIcons.bullseye,
              size: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Repositórios',
            icon: FaIcon(
              FontAwesomeIcons.github,
              size: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Sobre o dev',
            icon: FaIcon(
              FontAwesomeIcons.userAlt,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
