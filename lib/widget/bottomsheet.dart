import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    isDismissible: false,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        height: 300,
                        child: ListView(
                          children: [
                            ListTile(
                                onTap: () {
                                  print("Klik Photo");
                                },
                                leading: Icon(Icons.photo),
                                title: Text("Photo")),
                            ListTile(
                                leading: Icon(Icons.music_note_rounded),
                                title: Text("Music")),
                            ListTile(
                                leading: Icon(Icons.video_collection),
                                title: Text("Video")),
                            ListTile(
                                leading: Icon(Icons.share),
                                title: Text("Share")),
                            ListTile(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                leading: Icon(Icons.cancel),
                                title: Text("Cancel")),
                          ],
                        ),
                      );
                    });
              },
              child: Text("Show Bottom Sheet")),
        ),
      ),
    );
  }
}
