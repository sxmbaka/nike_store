import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int) onTabChange;

  BottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        gap: 15,
        tabBorderRadius: 12,
        onTabChange: (index) => onTabChange(index),
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Shop",
            textStyle: GoogleFonts.figtree(
              fontSize: 18,
            ),
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: "Cart",
            haptic: true,
            textStyle: GoogleFonts.figtree(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
