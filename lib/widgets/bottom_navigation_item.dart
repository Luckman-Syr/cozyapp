import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../themes/theme.dart';

class BottomNavItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  const BottomNavItem(
      {super.key, required this.imageUrl, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isActive ? buttonColor : Color(0xffF6F7F8),
              width: 2,
            ),
          ),
        ),
        child: SvgPicture.asset(
          imageUrl,
          width: 24,
          height: 24,
          color: isActive ? buttonColor : Color(0xff989BA1),
        ));
  }
}
