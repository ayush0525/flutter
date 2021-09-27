class CatelogModel {
  static final items = [
    Item(
        id: 01,
        name: "iphone",
        descripition: "good phone",
        price: 1000,
        color: "red",
        image:
            "http://oyemartrupans.com/uploads/proimg/Untitled-2.1631258956.png"),
  ];
}

class Item {
  final int id;
  final String name;
  final String descripition;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.descripition,
      required this.price,
      required this.color,
      required this.image});
}
