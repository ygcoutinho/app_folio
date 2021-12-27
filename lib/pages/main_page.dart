import 'package:app_folio/components/AppBar/appbar_content.dart';
import 'package:app_folio/components/card/card_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: AppBarContent(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: CardWidget(),
      ),
    );
  }
}
