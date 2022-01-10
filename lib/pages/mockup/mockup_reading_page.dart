import 'package:app_folio/components/mockup/mockup_item.dart';
import 'package:app_folio/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MockupReadingPage extends StatelessWidget {
  MockupReadingPage({Key? key}) : super(key: key);

  final List<Map<String, String>> items = [
    {'title': 'App Finanças', 'route': AppRoutes.MOCKUP_APP_FINANCAS},
    {'title': 'Tela de Login do Tinder', 'route': AppRoutes.MOCKUP_APP_TINDER},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text('Leitura de Mockup', style: TextStyle(fontSize: 20)),
            Text('Flutterando Masterclass', style: TextStyle(fontSize: 12)),
          ],
        ),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.sun,
              color: Colors.white,
            ),
            label: const Text(''),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => MockupItem(itemNumber: (index + 1).toString(), title: items[index]['title']!, route: items[index]['route']!),
      ),
    );
  }
}
