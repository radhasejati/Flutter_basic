import 'package:flutter/material.dart';

class Drawer_ extends StatelessWidget {
  const Drawer_({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              color: Colors.blue,
              child: Text(
                "Dashboard Menu",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Product");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Product");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Product");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Product");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Product");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Product");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Menu Product");
                    },
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
