import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/models/catelogs.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  // final int days = 30;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String name = "OyeMart";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catelogJson = await rootBundle.loadString("assets/files/catelogs.json");

    final decodedData = jsonDecode(catelogJson);
    var productsData = decodedData["products"];
    CatelogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OYEMART"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: CatelogModel.items.length,
          itemBuilder: (context, index) {
            return Itemwidget(
              item: CatelogModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
