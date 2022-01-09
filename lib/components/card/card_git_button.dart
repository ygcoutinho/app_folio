import 'package:flutter/material.dart';

class CardGitButton extends StatelessWidget {
  const CardGitButton({Key? key, required this.route}) : super(key: key);
  final String route;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Image.asset(
                  'lib/assets/images/icons/GitHub-Mark-Light-64px.png',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 4),
                const Text(
                  'Acessar código fonte',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, route),
            child: const Padding(
              padding: EdgeInsets.only(left: 33, right: 33),
              child: Text(
                'Ver mais',
                style: TextStyle(fontSize: 12),
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF055AA3)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
