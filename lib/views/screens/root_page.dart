import 'package:flutter/material.dart';
import 'package:nike_sneakers_ui/views/widget/my_drawer.dart';
import 'package:nike_sneakers_ui/views/widget/my_navbar.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: MyNavBar(
        onTap: (p0) {},
        index: currentIndex,
      ),
      drawer: MyDrawer(),
      body: Builder(builder: (context) {
        return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Center(child: Icon(Icons.card_travel)));
      }),
    );
  }
}
