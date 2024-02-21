import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_sneakers_ui/controller/shoecontroller.dart';
import 'package:nike_sneakers_ui/models/shoemodal.dart';

class MyGridTile extends StatefulWidget {
  const MyGridTile({
    super.key,
  });

  @override
  State<MyGridTile> createState() => _MyGridTileState();
}

class _MyGridTileState extends State<MyGridTile> {
  final _shoeController = Get.put(ShoeController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => GridView.builder(
          itemCount: _shoeController.shoes.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            final Shoe = _shoeController.shoes[index];
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //shoe image
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      Shoe.shoeUrl,
                      fit: BoxFit.contain,
                    ),
                  ),

                  // shoe price and rating star
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          Shoe.shoePrice,
                          style: GoogleFonts.lato(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: (20)),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.yellow.shade800,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                "4.5",
                                style: GoogleFonts.lato(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: (10)),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  //shoe name
                  Text(
                    Shoe.shoeName,
                    style: GoogleFonts.bebasNeue(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: (20)),
                    textAlign: TextAlign.start,
                  )
                ],
              ),
            );
          },
        ));
  }
}
