import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ControlledAnimation1 extends StatefulWidget {
  const ControlledAnimation1({Key? key}) : super(key: key);

  @override
  State<ControlledAnimation1> createState() => _ControlledAnimation1State();
}

class _ControlledAnimation1State extends State<ControlledAnimation1> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Size?> sizeAnimation;
  late Animation<BorderRadius?> borderAnimation;
  late Animation<Alignment?> alignAnimation;

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
    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    sizeAnimation = SizeTween(begin: const Size(50, 50), end: const Size(100, 50)).animate(controller);
    borderAnimation = BorderRadiusTween(begin: BorderRadius.circular(50), end: BorderRadius.circular(0)).animate(controller);
    //alignAnimation = AlignmentTween(begin: Alignment.bottomRight, end: Alignment.topCenter).animate(controller);
    alignAnimation = AlignmentTween(begin: Alignment.bottomRight, end: Alignment.topCenter).animate(controller);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text('Animação Controlada 1', style: TextStyle(fontSize: 20)),
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
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return GestureDetector(
            onTap: () => toggle(),
            child: Container(
              alignment: alignAnimation.value as Alignment,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: sizeAnimation.value?.width,
                  height: sizeAnimation.value?.height,
                  decoration: BoxDecoration(borderRadius: borderAnimation.value, color: Colors.blue),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
