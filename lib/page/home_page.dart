import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "OYEMART";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OyeMart"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
