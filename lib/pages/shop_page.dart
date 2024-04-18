import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_store/components/shoe_tile.dart';
import 'package:nike_store/components/shop_search_bar.dart';
import 'package:nike_store/models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                const Gap(15),
                const ShopSearchBar(),
                const Gap(20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hot Picks",
                        style: GoogleFonts.figtree(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        "See More",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const Gap(10),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ShoeTile(
                      shoe: Shoe(
                        name: "Air Jordan 11 Red",
                        price: 342,
                        description:
                            "Nike yeezy red octobers designed by Kanye West.",
                        imagePath: "assets/images/cortez-shoes-0VH7qz.png",
                      ),
                    ),
                  ),
                ),
                Gap(20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Explore",
                        style: GoogleFonts.figtree(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        "See More",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Gap(10),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ShoeTile(
                      shoe: Shoe(
                          name: "Air Jordan 11 Red",
                          price: 342,
                          description:
                              "Nike yeezy red octobers designed by Kanye West.",
                          imagePath: "assets/images/cortez-shoes-0VH7qz.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
