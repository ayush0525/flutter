import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  // final int days = 30;
  final String name = "OyeMart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OYEMART"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to  $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
