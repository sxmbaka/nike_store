import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_store/components/bottom_nav_bar.dart';
import 'package:nike_store/pages/cart_page.dart';
import 'package:nike_store/pages/shop_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        centerTitle: true,
        title: Image.asset("assets/images/nike.png", height: 60,),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey[900],
              size: 30,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40, left: 40),
                  child: Image.asset(
                    "assets/images/nike.png",
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width / 2.5,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  contentPadding: const EdgeInsets.only(left: 40),
                  title: Text(
                    "Home",
                    style: GoogleFonts.figtree(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  contentPadding: const EdgeInsets.only(left: 40),
                  title: Text(
                    "About",
                    style: GoogleFonts.figtree(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                contentPadding: const EdgeInsets.only(left: 40),
                title: Text(
                  "Logout",
                  style: GoogleFonts.figtree(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
