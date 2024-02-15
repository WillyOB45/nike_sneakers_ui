import 'package:flutter/material.dart';
import 'package:nike_sneakers_ui/views/screens/home_page.dart';
import 'package:nike_sneakers_ui/views/widget/my_navbar.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentIndex = 0;

  List<Widget> screens = [
    const HomePage(),
  ];

  _navigateScreens(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: MyNavBar(
        onTap: (p0) => _navigateScreens,
        index: currentIndex,
      ),
      body: screens[currentIndex],
    );
  }
}
