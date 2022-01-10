import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ControlledAnimation2 extends StatefulWidget {
  const ControlledAnimation2({Key? key}) : super(key: key);

  @override
  State<ControlledAnimation2> createState() => _ControlledAnimation2State();
}

class _ControlledAnimation2State extends State<ControlledAnimation2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text('Animação Controlada 2', style: TextStyle(fontSize: 20)),
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
        itemCount: 50,
        itemBuilder: (context, index) => CustomTile(
          index: index,
        ),
      ),
    );
  }
}

class CustomTile extends StatefulWidget {
  CustomTile({Key? key, required this.index}) : super(key: key);
  int index;
  @override
  _CustomTileState createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> with TickerProviderStateMixin {
  late AnimationController controller;
  late Tween<double> rotationAnimation;
  late Animation<double> alignAnimation;

  void toggle() {
    if (controller.value == 0) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 100));
    rotationAnimation = Tween(begin: 0.0, end: -0.25);
    alignAnimation = Tween(begin: 0.0, end: 1.0).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) => GestureDetector(
        onTap: () => toggle(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My expansion tile..${widget.index}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  RotationTransition(
                    turns: rotationAnimation.animate(controller),
                    child: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                ],
              ),
            ),
            ClipRRect(
              child: Align(
                heightFactor: alignAnimation.value,
                child: Column(
                  children: const [
                    FlutterLogo(
                      size: 25,
                    ),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget lacus finibus, rutrum odio id, semper lectus. Fusce dictum vehicula orci, elementum condimentum ligula venenatis a. Cras eget mauris sollicitudin tellus sollicitudin aliquet. Aliquam varius, tellus vel accumsan euismod, elit velit tempor turpis, vel dictum nisi dui eget ex.'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
