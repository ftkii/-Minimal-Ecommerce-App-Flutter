import 'package:ec_app/Components/shoes_tile.dart';
import 'package:ec_app/models/cart.dart';
import 'package:ec_app/models/shoes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shoppage extends StatefulWidget {
  Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  // add shoes to cart method
//مافهمت ذا
  addShoeToCart(Shoes shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alter the user , shoes successflly added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Successfully added! "),
        content: Text("Check your cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Consumer<Cart>(
        builder: (context, value, child) => ListView(
          children: [
            //Search bar
            Padding(
              padding: const EdgeInsets.all(12),
              child: Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    hintText: "  Search",
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[300],
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            //message
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Text(
                "Every one files.. some fly longer than other",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[600], fontSize: 15),
              ),
            ),

            //hot picks
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Hot Picks",
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //List of shoes
            Container(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  //get the shope shoes List
                  Shoes shoe = value.getShoesList()[index];

                  return Shoestile(
                    shoe: shoe,
                    onTap: () => addShoeToCart(shoe),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Divider(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
