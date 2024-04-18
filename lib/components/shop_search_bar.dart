import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopSearchBar extends StatelessWidget {
  const ShopSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Search Nike",
            style: GoogleFonts.figtree(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[400],
            ),
          ),
          Icon(
            Icons.search,
            color: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}
