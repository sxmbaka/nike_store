import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_store/components/shop_shoe_tile.dart';
import 'package:nike_store/components/shop_search_bar.dart';
import 'package:nike_store/models/cart.dart';
import 'package:nike_store/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoeToCart(Shoe shoe) {
    // add item to cart
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // notify the user about his actions
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Added to cart!'),
        content: Text('You can view it in your cart.'),
        
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Center(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: [
                  const Gap(15),
                  const ShopSearchBar(),
                  const Gap(50),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hot Picks',
                          style: GoogleFonts.figtree(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          'See More',
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
                        itemBuilder: (context, index) {
                          Shoe shoe = value.getShoeList()[index];
                          return ShopShoeTile(
                            shoe: shoe,
                            onTap: () => addShoeToCart(shoe),
                          );
                        }),
                  ),
                  // Gap(20),
                  // Container(
                  //   margin: const EdgeInsets.symmetric(horizontal: 30),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         "Explore",
                  //         style: GoogleFonts.figtree(
                  //           fontSize: 30,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //       const Text(
                  //         "See More",
                  //         style: TextStyle(
                  //             fontSize: 15,
                  //             color: Colors.blueAccent,
                  //             fontWeight: FontWeight.w600),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // Gap(10),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height / 2.5,
                  //   child: ListView.builder(
                  //     itemCount: 5,
                  //     scrollDirection: Axis.horizontal,
                  //     itemBuilder: (context, index) => ShoeTile(
                  //       shoe: Shoe(
                  //           name: "Air Jordan 11 Red",
                  //           price: 342,
                  //           description:
                  //               "Nike yeezy red octobers designed by Kanye West.",
                  //           imagePath: "assets/images/cortez-shoes-0VH7qz.png"),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
