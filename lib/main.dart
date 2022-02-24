import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/home.dart';
import 'package:flutter_basic/widget/dialog.dart';
import 'package:flutter_basic/widget/dropdown.dart';
import 'package:flutter_basic/widget/increment.dart';
import 'package:flutter_basic/widget/textfield.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigation_(),
    );
  }
}
