import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_store/components/cart_shoe_tile.dart';
import 'package:nike_store/models/cart.dart';
import 'package:nike_store/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.shopping_cart_rounded,
                  size: 30,
                ),
                const Gap(10),
                Text(
                  'My Cart',
                  style: GoogleFonts.figtree(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Gap(40),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCartList().length,
                itemBuilder: (context, index) {
                  // get individual shoe
                  Shoe shoe = value.getUserCartList()[index];

                  // return cart item
                  return CartShoeTile(
                    shoe: shoe,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
