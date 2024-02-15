import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_sneakers_ui/models/shoemodal.dart';

class MyGridTile extends StatelessWidget {
  const MyGridTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productsDetails.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        final ShoeDetails = productsDetails[index];
        return ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Card(
            child: Column(
              children: [
                // shoe image
                Image.asset(
                  ShoeDetails.shoeUrl,
                  height: 100,
                  width: 100,
                ),

                // shoe price and rating star
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Expanded(
                    child: Row(
                      children: [
                        Text(
                          ShoeDetails.shoePrice,
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
                ),
                const SizedBox(
                  height: 10,
                ),

                //shoe name
                Text(
                  ShoeDetails.shoeName,
                  style: GoogleFonts.bebasNeue(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: (20)),
                  textAlign: TextAlign.start,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
