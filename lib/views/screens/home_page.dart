import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),

              // drawer and notifications icon
              Row(
                children: [
                  Builder(builder: (context) {
                    return GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: SquareTile(
                          icon: Icons.sort,
                          color: Colors.white,
                          iconcolor: Colors.black,
                          iconsize: 35,
                        ));
                  }),
                  const SizedBox(
                    width: 250,
                  ),
                  SquareTile(
                    iconcolor: Colors.black,
                    iconsize: 35,
                    icon: Icons.shopping_cart_checkout,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              //heading
              Container(
                alignment: AlignmentDirectional.topStart,
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
                      height: 3,
                    ),
                    Text(
                      "Shoes",
                      style: GoogleFonts.bebasNeue(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: (40)),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    // searchbar
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
                    //tabar lists
                    SizedBox(
                      width: 200,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TabBar(
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
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // SizedBox(
                    //   height: 500,
                    //   width: 500,
                    //   child: TabBarView(children: [
                    //     Container(
                    //       color: Colors.amber,
                    //     ),
                    //     Container(
                    //       color: Colors.amber,
                    //     ),
                    //     Container(
                    //       color: Colors.amber,
                    //     ),
                    //     Container(
                    //       color: Colors.amber,
                    //     ),
                    //   ]),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
