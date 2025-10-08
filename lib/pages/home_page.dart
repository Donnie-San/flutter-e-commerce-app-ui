import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app_ui/components/bottom_navigation_bar.dart';
import 'package:flutter_e_commerce_app_ui/pages/cart_page.dart';
import 'package:flutter_e_commerce_app_ui/pages/orders_page.dart';
import 'package:flutter_e_commerce_app_ui/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottombar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [ShopPage(), CartPage(), OrdersPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottombar(index),
      ),
    );
  }
}
