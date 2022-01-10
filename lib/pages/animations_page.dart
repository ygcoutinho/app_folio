import 'package:app_folio/components/animations/animation_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimationsPage extends StatelessWidget {
  AnimationsPage({Key? key}) : super(key: key);

  final List<Map<String, String>> items = [
    {'title': 'Animação Implícita 1', 'route': 'xxx'},
    {'title': 'Animação Implícita 2', 'route': 'xxx'},
    {'title': 'Animação Controlada 1', 'route': 'xxx'},
    {'title': 'Animação Controlada 2', 'route': 'xxx'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text('Animações', style: TextStyle(fontSize: 20)),
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
        itemBuilder: (context, index) => AnimationItem(itemNumber: (index + 1).toString(), title: items[index]['title']!, route: items[index]['route']!),
      ),
    );
  }
}
