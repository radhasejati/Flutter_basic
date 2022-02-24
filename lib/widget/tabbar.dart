import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with SingleTickerProviderStateMixin {
  late TabController tabC = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Tab Bar"),
        bottom: TabBar(controller: tabC, tabs: [
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Tab(
            text: "Chats",
          ),
          Tab(
            text: "Status",
          ),
          Tab(
            text: "Calls",
          ),
        ]),
      ),
      body: TabBarView(controller: tabC, children: [
        Center(child: Text("Camera")),
        Center(child: Text("Chats")),
        Center(child: Text("Status")),
        Center(child: Text("Calls")),
      ]),
    );
  }
}
