import 'package:flutter/material.dart';

class VerticalDividerCustom extends StatelessWidget {
  const VerticalDividerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: const VerticalDivider(
        width: 1,
        thickness: 1,
        color: Colors.grey,
      ),
    );
  }
}
