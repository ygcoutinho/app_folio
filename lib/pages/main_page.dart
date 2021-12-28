import 'package:app_folio/components/AppBar/appbar_content.dart';
import 'package:app_folio/components/card/card_widget.dart';
import 'package:app_folio/data/dummy_data.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: AppBarContent(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView.builder(
            itemCount: DUMMY_DATA.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: CardWidget(cardItems: DUMMY_DATA[index]),
              );
            }),
      ),
    );
  }
}
