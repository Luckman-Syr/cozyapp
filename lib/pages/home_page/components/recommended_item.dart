import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../themes/theme.dart';

class RecommendedItem extends StatelessWidget {
  final String imageUrl, name, city, country, rating;
  final int price;
  const RecommendedItem(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.city,
      required this.price,
      required this.country,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: homePadding,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: primaryRadius,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: 110,
                  width: 130,
                  color: const Color(0xffF6F7F8),
                  child: Image.asset(
                    imageUrl,
                    height: 110,
                    width: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(17),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/Icon_star_solid.svg",
                        height: 18,
                        width: 18,
                      ),
                      Text(
                        rating,
                        style: primaryTextStyle.copyWith(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: ContentTitleTextStyle,
              ),
              const SizedBox(
                height: 2,
              ),
              RichText(
                text: TextSpan(
                  text: "\$$price",
                  style: PriceTextStyle,
                  children: [
                    TextSpan(
                      text: " / month",
                      style: basicTextStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "$city, $country",
                style: basicTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
