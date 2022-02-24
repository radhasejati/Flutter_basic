import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      title: Text("INI ITU JUDUL"),
                      content: Text("Content nya berisi apa saja"),
                      actions: [
                        ElevatedButton(onPressed: () {}, child: Text("Ok")),
                        ElevatedButton(onPressed: () {}, child: Text("Cancel")),
                      ],
                    ));
          },
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
}
