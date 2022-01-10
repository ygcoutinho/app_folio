import 'package:flutter/material.dart';

class AnimationItem extends StatelessWidget {
  const AnimationItem({Key? key, required this.itemNumber, required this.title, required this.route}) : super(key: key);
  final String itemNumber, title, route;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        decoration: BoxDecoration(color: const Color(0xFF172026), borderRadius: BorderRadius.circular(35)),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xFF055AA3),
                radius: 25,
                child: Text(
                  itemNumber,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
