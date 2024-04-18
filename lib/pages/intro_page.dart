import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:nike_store/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            children: [
              const Gap(100),
              Lottie.asset(
                'assets/lottie-files/nike-logo-lottie.json',
                width: 600,
                reverse: true,
              ),
              const Gap(40),
              Text(
                'Just do it!',
                style: GoogleFonts.figtree(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Text(
                'Brand new sneakers and custom kicks made with premium quality.',
                style: GoogleFonts.arimo(
                  fontSize: 14,
                ),
              ),
              const Gap(40),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration.zero,
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const HomeScreen(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 120,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.black87,
                  ),
                  // color: Colors.black87,
                  child: Text(
                    'Shop Now',
                    style: GoogleFonts.figtree(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
