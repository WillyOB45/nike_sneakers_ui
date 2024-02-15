import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_sneakers_ui/views/screens/home_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      elevation: 0,
      backgroundColor: Colors.grey.shade300,
      child: Column(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey.shade300),
              child: const Image(
                  image: AssetImage(
                "assets/nikelogo.png",
              ))),
          const Divider(
            thickness: 3,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            splashColor: Colors.grey,
            onTap: () {
              Get.to(const HomePage());
            },
            leading: const Icon(Icons.home_sharp),
            title: Text(
              "H o m e",
              style: GoogleFonts.bebasNeue(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: (20)),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            splashColor: Colors.grey,
            onTap: () {},
            leading: const Icon(Icons.shopping_cart_sharp),
            title: Text(
              "C a r t",
              style: GoogleFonts.bebasNeue(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: (20)),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          ListTile(
            splashColor: Colors.grey,
            onTap: () {},
            leading: const Icon(Icons.settings),
            title: Text(
              "S e t t i n g s",
              style: GoogleFonts.bebasNeue(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: (20)),
            ),
          ),
          const SizedBox(
            height: 270,
          ),
          const Divider(
            thickness: 3,
            color: Colors.grey,
          ),
          ListTile(
            splashColor: Colors.grey,
            onTap: () {},
            leading: const Icon(Icons.logout_sharp),
            title: Text(
              "L o g o u t",
              style: GoogleFonts.bebasNeue(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: (20)),
            ),
          ),
        ],
      ),
    );
  }
}
