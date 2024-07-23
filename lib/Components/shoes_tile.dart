import 'dart:ffi';

import 'package:ec_app/models/shoes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Shoestile extends StatelessWidget {
  Void Function()? onTap;
  Shoes shoe;
  Shoestile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoes pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              shoe.imagepath,
              height: 250,
            ),
          ),

          //description
          Text(
            shoe.description,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoes name
                    Text(
                      shoe.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    //price
                    Text(
                      // ignore: prefer_interpolation_to_compose_strings
                      '\$' + shoe.price,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              //button to add to cart
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
