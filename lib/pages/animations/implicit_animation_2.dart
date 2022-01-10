import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImplicitAnimation2 extends StatefulWidget {
  const ImplicitAnimation2({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimation2> createState() => _ImplicitAnimation2State();
}

class _ImplicitAnimation2State extends State<ImplicitAnimation2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text('Animação Implícita 2', style: TextStyle(fontSize: 20)),
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
        itemCount: 60,
        itemBuilder: (context, index) => ListCustom(index),
      ),
    );
  }
}

class ListCustom extends StatefulWidget {
  ListCustom(this.index);
  int index;
  @override
  _ListCustomState createState() => _ListCustomState();
}

class _ListCustomState extends State<ListCustom> {
  bool isExpanded = false;
  void changeRotation() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  Duration duration = const Duration(milliseconds: 250);

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTap: () => changeRotation(),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My expansion tile ${widget.index}',
                  style: const TextStyle(fontSize: 18),
                ),
                //girando ícone
                AnimatedRotation(
                  turns: isExpanded ? -0.25 : 0,
                  duration: duration,
                  child: const Icon(Icons.arrow_back_ios_rounded),
                ),
              ],
            ),
          ),
        ),
        ClipRect(
          child: AnimatedAlign(
            alignment: Alignment.bottomCenter,
            curve: Curves.linear,
            duration: duration,
            heightFactor: isExpanded ? 1 : 0,
            child: Column(
              children: const [
                FlutterLogo(
                  size: 50,
                ),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget lacus finibus, rutrum odio id, semper lectus. Fusce dictum vehicula orci, elementum condimentum ligula venenatis a. Cras eget mauris sollicitudin tellus sollicitudin aliquet. Aliquam varius, tellus vel accumsan euismod, elit velit tempor turpis, vel dictum nisi dui eget ex.'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
