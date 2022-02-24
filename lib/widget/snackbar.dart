import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Snackbar")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Hapus produk berhasil"),
                action: SnackBarAction(
                  label: "Cancel",
                  onPressed: () {
                    print("Tidak jadi hapus produk");
                  },
                  textColor: Colors.grey[350],
                ),
                backgroundColor: Colors.blue,
                duration: Duration(seconds: 2),
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
            );
          },
          child: Text("Show Snackbar"),
        ),
      ),
    );
  }
}
