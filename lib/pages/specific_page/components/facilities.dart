import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../themes/theme.dart';

class Facilities extends StatelessWidget {
  final String imageUrl, value, name;
  const Facilities(
      {super.key,
      required this.imageUrl,
      required this.value,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        RichText(
          text: TextSpan(
            text: value,
            style: primaryTextStyle.copyWith(
                fontSize: 14, color: primaryColor, fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                text: " ${name}",
                style: basicTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
