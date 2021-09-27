import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catelogs.dart';

class Itemwidget extends StatelessWidget {
  final Item item;
  // ignore: unnecessary_null_comparison
  const Itemwidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        item.image,
        height: 70.0,
        width: 70.0,
      ),
      title: Text(
        item.name,
      ),
      subtitle: Text(item.descripition),
      trailing: Text("\₹${item.price}"),
    );
  }
}
