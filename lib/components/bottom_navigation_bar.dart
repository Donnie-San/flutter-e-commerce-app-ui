import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app_ui/colors.dart';
import "package:google_nav_bar/google_nav_bar.dart";

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;

  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      padding: EdgeInsets.only(top: 30, bottom: 40, left: 30, right: 30),
      backgroundColor: AppColors.dark,

      color: AppColors.light,
      activeColor: AppColors.accent,

      onTabChange: (value) => onTabChange!(value),
      tabs: [
        GButton(icon: Icons.shopping_bag, text: "Shop"),
        GButton(icon: Icons.shopping_cart, text: "Cart"),
        GButton(icon: Icons.inventory, text: "Orders"),
      ],
    );
  }
}
