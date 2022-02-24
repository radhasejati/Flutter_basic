import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  final List data = [
    {"judul": "Pilihan ke-1", "data": 1},
    {"judul": "Pilihan ke-2", "data": 2},
    {"judul": "Pilihan ke-3", "data": 3},
  ];

  late int dataAwal;

  @override
  void initState() {
    dataAwal = data[0]["data"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DropDown"),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: DropdownButton<int>(
              value: dataAwal,
              items: data
                  .map(
                    (e) => DropdownMenuItem(
                      child: Text("${e['judul']}"),
                      value: e['data'] as int,
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {});
                dataAwal = value!;
              },
            ),
          ),
        ));
  }
}
