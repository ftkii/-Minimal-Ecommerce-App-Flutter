import 'package:ec_app/pages/CartPage.dart';
import 'package:ec_app/pages/ShopPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;

  final List<Widget> _pages = [
    //shop page
      Shoppage(),
    //cart page
    const Cartpage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                )),
          )),
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          currentIndex: selected,
          selectedItemColor: Colors.grey[800],
          unselectedItemColor: Colors.grey[500],
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: "Cart",
            ),
          ]),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(
                  child: Image.asset(
                    "images/nike_logo.png",
                    color: Colors.white,
                  ),
                ),
                //other pages
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    title: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    title: Text(
                      "About",
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[selected],
    );
  }
}
