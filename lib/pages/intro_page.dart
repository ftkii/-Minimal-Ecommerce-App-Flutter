import 'package:ec_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: ListView(
          children: [
            //logo
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.only(top: 200),
              child: Image.asset("images/nike_logo.png"),
            ),
            //title
            SizedBox(
              height: 150,
            ),
            Text(
              "Just Do It",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            //subtitle
            SizedBox(
              height: 20,
            ),
            Text(
              "Brand new sneakers and custom kicks made with premium quality",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.grey[600]),
            ),
            //start button
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: MaterialButton(
                padding: EdgeInsets.symmetric(vertical: 20),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("Shope Now"),
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
