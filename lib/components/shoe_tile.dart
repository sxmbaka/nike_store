import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_store/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  const ShoeTile({
    super.key,
    required this.shoe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoepic
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(shoe.imagePath),
          ),

          // description

          // name and price
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: GoogleFonts.figtree(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "\$${shoe.price}",
                      style: GoogleFonts.arimo(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
