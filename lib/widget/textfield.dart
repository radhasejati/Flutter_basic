import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  const Textfield({Key? key}) : super(key: key);

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  bool isHidden = true;

  TextEditingController eamilC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: eamilC,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                labelText: "Email",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                prefixIcon: Icon(Icons.email)),
          ),
          SizedBox(height: 20),
          TextField(
            controller: passC,
            autocorrect: false,
            obscureText: isHidden,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                labelText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                prefixIcon: Icon(Icons.vpn_key),
                suffixIcon: IconButton(
                    onPressed: () {
                      if (isHidden == true) {
                        isHidden = false;
                      } else {
                        isHidden = true;
                      }
                      setState(() {});
                    },
                    icon: Icon(Icons.remove_red_eye))),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              print(
                  "Login dengan email (${eamilC.text}) & password (${passC.text})");
            },
            child: Text("Login"),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
          )
        ],
      ),
    );
  }
}
