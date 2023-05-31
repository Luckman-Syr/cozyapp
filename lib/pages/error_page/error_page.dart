import 'package:flutter/material.dart';
import 'package:porto_mobile1/widgets/button.dart';
import '../../themes/theme.dart';

class ErrorPage extends StatelessWidget {
  static const routeName = '/errorpage';
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/404.png",
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              "Where are you going?",
              style: TitleTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              "Seems like the page that you were\nrequested is already gone",
              style: basicTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Button(text: "Back to Home", route: "/homepage"),
          ],
        ),
      ),
    );
  }
}
