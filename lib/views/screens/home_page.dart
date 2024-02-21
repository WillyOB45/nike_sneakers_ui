import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_sneakers_ui/models/shoemodal.dart';
import 'package:nike_sneakers_ui/views/screens/shoe_page.dart';
import 'package:nike_sneakers_ui/views/widget/gridtiles.dart';
import 'package:nike_sneakers_ui/views/widget/my_drawer.dart';
import 'package:nike_sneakers_ui/views/widget/my_searchbar.dart';
import 'package:nike_sneakers_ui/views/widget/squaretiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          drawer: const MyDrawer(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),

                  // menu icon
                  Row(
                    children: [
                      Builder(builder: (context) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              Scaffold.of(context).openDrawer();
                            });
                          },
                          child: SquareTile(
                              icon: Icons.sort,
                              color: Colors.white,
                              iconcolor: Colors.black,
                              iconsize: (35)),
                        );
                      }),
                      const SizedBox(
                        width: 250,
                      ),
                      SquareTile(
                          icon: Icons.shopping_cart_checkout,
                          color: Colors.white,
                          iconcolor: Colors.black,
                          iconsize: (35))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // heading
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore New",
                          style: GoogleFonts.bebasNeue(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: (40)),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Text(
                          "Shoes",
                          style: GoogleFonts.bebasNeue(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: (40)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // search bar
                  Row(
                    children: [
                      const SizedBox(
                        width: 300,
                        child: MySearchBar(
                          text: "Search for something...",
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SquareTile(
                          iconsize: 45,
                          iconcolor: Colors.white,
                          icon: Icons.share_outlined,
                          color: Colors.black),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  // tabar list
                  TabBar(
                      labelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(20)),
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.grey,
                      tabs: const [
                        Tab(
                          text: "nike",
                        ),
                        Tab(
                          text: "nike",
                        ),
                        Tab(
                          text: "nike",
                        ),
                        Tab(
                          text: "nike",
                        ),
                      ]),
                  const SizedBox(
                    height: 20,
                  ),

                  //tabar view
                  Expanded(
                    child: SizedBox(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(ShoePage());
                        },
                        child: TabBarView(
                          children: [
                            MyGridTile(),
                            MyGridTile(),
                            MyGridTile(),
                            MyGridTile(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
