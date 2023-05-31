import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../themes/theme.dart';
import '../../../models/city.dart';

class CityCard extends StatefulWidget {
  const CityCard({super.key});

  @override
  State<CityCard> createState() => _CityCardState();
}

class _CityCardState extends State<CityCard> {
  List _data = [];
  Future<void> readJson() async {
    final String response =
        await DefaultAssetBundle.of(context).loadString('data/city.json');
    final data = await json.decode(response);
    setState(() {
      _data = data["cities"];
    });
  }

  @override
  Widget build(BuildContext context) {
    readJson();
    return Container(
      padding: homePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular Cities",
            style: primaryTextStyle,
          ),
          SizedBox(height: subTitlePadding),
          SizedBox(
            height: 150,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: _data.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: popularPadding,
                  child: ClipRRect(
                    borderRadius: primaryRadius,
                    child: Container(
                      height: 150,
                      width: 120,
                      color: Color(0xffF6F7F8),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Image.network(
                                ("${_data[index]["image"]}"),
                                height: 102,
                                width: 120,
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                              _data[index]['isPopular']
                                  ? Container(
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(17),
                                          bottomLeft: Radius.circular(25),
                                        ),
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/icons/Icon_star_solid.svg",
                                        height: 22,
                                        width: 22,
                                      ),
                                    )
                                  : Container(),
                            ],
                          ),
                          Container(
                            height: 48,
                            alignment: Alignment.center,
                            child: Text(
                              (_data[index]["city"].toString()).length <= 8
                                  ? "${_data[index]["city"]}"
                                  : "${_data[index]["city"]}".substring(0, 8) +
                                      "..",
                              style: ContentTitleTextStyle.copyWith(
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
