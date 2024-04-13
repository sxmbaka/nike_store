import 'package:flutter/material.dart';
import 'package:nike_store/pages/intro_page.dart';

void main() {
  runApp(const NikeShop());
}

class NikeShop extends StatelessWidget {
  const NikeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
