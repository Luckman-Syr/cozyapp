import 'package:flutter/material.dart';
import 'package:porto_mobile1/pages/home_page/home_page.dart';
import 'package:porto_mobile1/widgets/button.dart';
import '../../themes/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const routeName = '/splash_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 165,
                            child: Text(
                              "Find Cozy House to Stay and Happy",
                              style: TitleTextStyle,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 150,
                            child: Text(
                              "Stop membuang banyak waktu pada tempat yang tidak habitable",
                              style: basicTextStyle,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Button(text: "Explore Now", route: '/homepage')
              ],
            ),
          ),
          Image.asset(
            'assets/images/splash_background.png',
          ),
        ],
      ),
    );
  }
}
