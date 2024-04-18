import 'package:flutter/material.dart';
import 'package:nike_store/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Force 1',
      price: 169,
      description: 'des',
      imagePath: 'assets/images/air-force-1-07-lv8-shoes-chrS2D.png',
    ),
    Shoe(
      name: 'Blazer Mid 77',
      price: 430,
      description: 'description',
      imagePath: 'assets/images/blazer-mid-77-older-shoes-4Vk9Rd.png',
    ),
    Shoe(
      name: 'Cortez 12',
      price: 219,
      description: 'description',
      imagePath: 'assets/images/cortez-shoes-0VH7qz.png',
    ),
    Shoe(
      name: 'Dunk Low Twist',
      price: 329,
      description: 'description',
      imagePath: 'assets/images/dunk-low-twist-shoes-V6NqFG.png',
    ),
    Shoe(
      name: 'Icon Classic Sandals',
      price: 129,
      description: 'description',
      imagePath: 'assets/images/icon-classic-sandals-Jrc3kN.png',
    ),
  ];

  // list of items in user's cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCartList() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove itmes from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
