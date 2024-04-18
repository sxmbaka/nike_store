import 'package:flutter/material.dart';
import 'package:nike_store/models/cart.dart';
import 'package:nike_store/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const NikeShop());
}

class NikeShop extends StatelessWidget {
  const NikeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
