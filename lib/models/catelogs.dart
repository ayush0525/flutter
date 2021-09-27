class CatelogModel {
  static final items = [
    Item(
        id: 01,
        name: "iphone",
        descripition: "good phone",
        price: 1000,
        color: "red",
        image: ""),
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
