import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/product.dart';

class Navigation_ extends StatelessWidget {
  const Navigation_({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return ProductPage();
                    },
                  ));
                },
                child: Text("Product >>")),
          ],
        ),
      ),
    );
  }
}
