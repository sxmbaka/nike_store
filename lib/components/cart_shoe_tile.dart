import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_store/models/cart.dart';
import 'package:nike_store/models/shoe.dart';
import 'package:provider/provider.dart';

class CartShoeTile extends StatefulWidget {
  final Shoe shoe;

  const CartShoeTile({
    super.key,
    required this.shoe,
  });

  @override
  State<CartShoeTile> createState() => _CartShoeTileState();
}

class _CartShoeTileState extends State<CartShoeTile> {
  void deleteShoeFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[100],
      ),
      child: Row(
        children: [
          const Gap(20),
          Image.asset(
            widget.shoe.imagePath,
            height: 105,
          ),
          const Gap(20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.shoe.name,
                style: GoogleFonts.figtree(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '\$${widget.shoe.price}',
                style: GoogleFonts.arimo(
                  color: Colors.red,
                ),
              )
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: deleteShoeFromCart,
                  child: const Icon(
                    Icons.delete_rounded,
                    color: Colors.redAccent,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
