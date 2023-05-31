import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:porto_mobile1/pages/home_page/components/recommended_item.dart';
import 'package:porto_mobile1/pages/specific_page/specific_page.dart';
import '../../../themes/theme.dart';

class Recommended extends StatefulWidget {
  const Recommended({super.key});

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  List _data = [];

  Future<void> readJson() async {
    final String response = await DefaultAssetBundle.of(context)
        .loadString('data/recommended.json');
    final data = await json.decode(response);
    setState(() {
      _data = data["recommended"];
    });
  }

  @override
  Widget build(BuildContext context) {
    readJson();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Remommended Space",
          style: primaryTextStyle,
        ),
        SizedBox(
          height: subTitlePadding,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0),
          itemCount: _data.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SpecificPage(data: _data[index]);
                  }),
                );
              },
              child: RecommendedItem(
                  imageUrl: _data[index]['imageUrl'],
                  name: _data[index]['name'],
                  city: _data[index]['city'],
                  price: _data[index]['price'],
                  country: _data[index]['country'],
                  rating: _data[index]['rating']),
            );
          },
        ),
      ],
    );
  }
}
