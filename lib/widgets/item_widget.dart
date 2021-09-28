import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catelogs.dart';

class Itemwidget extends StatelessWidget {
  final Item item;
  // ignore: unnecessary_null_comparison
  const Itemwidget({Key? key, required this.item})
      :
        // assert( item != null ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: ListTile(
        onTap: () {
          print("${item.name}pressed");
        },
        leading: Image.network(
          item.image,
          height: 100.0,
          width: 70.0,
        ),
        title: Text(
          item.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          item.descripition,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
        trailing: Text(
          "\₹${item.price}",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
