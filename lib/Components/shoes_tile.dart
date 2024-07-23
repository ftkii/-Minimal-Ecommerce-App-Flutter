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
      margin: EdgeInsets.only(left: 25),
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
            child: Image.asset(
              shoe.imagepath,
              height: 250,
            ),
            borderRadius: BorderRadius.circular(12),
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
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //price
                    Text(
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
                  padding: EdgeInsets.all(20),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
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
