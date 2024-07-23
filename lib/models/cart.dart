import 'package:flutter/material.dart';

import 'shoes.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  // ignore: non_constant_identifier_names
  List<Shoes> ShoeShop = [
    Shoes(
        name: "shoes one",
        price: "390",
        imagepath: "images/sh2.png",
        description: "description"),
    Shoes(
        name: "shoes two",
        price: "500",
        imagepath: "images/sh3.png",
        description: "description"),
    Shoes(
        name: "shoes three",
        price: "255",
        imagepath: "images/sh4.png",
        description: "description"),
    Shoes(
        name: "shoes four",
        price: "167",
        imagepath: "images/sh5.png",
        description: "description"),
  ];

  //list of items in user cart
  List<Shoes> userCart = []; // in the begining its empty

  //get list of shoes for sale
  List<Shoes> getShoesList() {
    return ShoeShop;
  }

  //get cart
  List<Shoes> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoes she) {
    userCart.add(she);
    notifyListeners();
  }

  //remove items from the cart
  void removeItemToCart(Shoes she) {
    userCart.remove(she);
    notifyListeners();
  }
}
