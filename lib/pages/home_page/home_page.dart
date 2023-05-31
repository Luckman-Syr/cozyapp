import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:porto_mobile1/pages/home_page/components/city_card.dart';
import 'package:porto_mobile1/pages/home_page/components/tips.dart';
import 'package:porto_mobile1/providers/space_provider.dart';
import 'package:porto_mobile1/widgets/bottom_navigation.dart';
import 'package:provider/provider.dart';

import '../../models/city.dart';
import '../../themes/theme.dart';
import 'components/recommended.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/homepage';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    spaceProvider.getRecomendedSpaces();

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(
          top: 10,
        ),
        margin: primaryMargin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(0),
                children: [
                  Container(
                    padding: homePadding,
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Explore Now", style: TitleTextStyle),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Mencari kosan yang cozy",
                          style: basicTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: const CityCard(),
                  ),
                  Container(
                    child: const Recommended(),
                  ),
                  Tips(),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            )
          ],
        ),
      ),
      floatingActionButton: BottomNavigation(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
