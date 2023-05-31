import 'package:flutter/material.dart';
import '../pages/home_page/home_page.dart';
import '../themes/theme.dart';

class Button extends StatelessWidget {
  final String text, route;
  const Button({super.key, required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, route.toString());
      },
      child: Text(
        text,
        style: ButtonTextStyle,
      ),
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: buttonRadius,
        ),
      ),
    );
  }
}
