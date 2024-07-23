// ignore_for_file: file_names

import 'package:ec_app/Components/cart_item.dart';
import 'package:ec_app/models/cart.dart';
import 'package:ec_app/models/shoes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            const Text(
              "My Cart",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                //get individual shoes
                Shoes individualShoes = value.getUserCart()[index];
                //return the cart item
                return CartItem(
                  shoe: individualShoes,
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
