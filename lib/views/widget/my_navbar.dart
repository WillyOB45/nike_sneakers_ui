import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyNavBar extends StatelessWidget {
  bool Function(int)? letIndexChange;
  void Function(int)? onTap;
  final int index;
  MyNavBar({super.key, required this.onTap, required this.index});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        height: 50,
        letIndexChange: letIndexChange,
        index: index,
        onTap: onTap,
        buttonBackgroundColor: Colors.grey,
        backgroundColor: Colors.grey.shade300,
        items: const [
          Icon(
            Icons.home_outlined,
          ),
          Icon(Icons.my_location_outlined, semanticLabel: "location"),
          Icon(Icons.shopping_cart_checkout),
          Icon(Icons.settings),
        ]);
  }
}
