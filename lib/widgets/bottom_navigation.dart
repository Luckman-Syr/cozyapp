import 'package:flutter/material.dart';
import '../themes/theme.dart';
import 'bottom_navigation_item.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
      ),
      height: 65,
      width: MediaQuery.of(context).size.width - (2 * edge),
      decoration: BoxDecoration(
        color: Color(0xffF6F7F8),
        borderRadius: primaryRadius,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(
            imageUrl: "assets/icons/bottom_nav/Icon_home_solid.svg",
            isActive: true,
          ),
          BottomNavItem(
            imageUrl: "assets/icons/bottom_nav/Icon_mail_solid.svg",
            isActive: false,
          ),
          BottomNavItem(
            imageUrl: "assets/icons/bottom_nav/Icon_card_solid.svg",
            isActive: false,
          ),
          BottomNavItem(
            imageUrl: "assets/icons/bottom_nav/Icon_love_solid.svg",
            isActive: false,
          ),
        ],
      ),
    );
  }
}
