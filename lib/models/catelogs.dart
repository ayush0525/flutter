class CatelogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        descripition: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-blue-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021661000"),
    Item(
        id: 2,
        name: "Pixel 5",
        descripition: "Google Pixel phone 5th generation",
        price: 699,
        color: "#00ac51",
        image:
            "https://www.telstra.com.au/content/dam/tcom/lego/2020/plans-devices/mobiles/google-pixel-5/shared-google-pixel-5-black-05-900x1200.png"),
    Item(
        id: 3,
        name: "M1 Macbook Air",
        descripition: "Apple Macbook air with apple silicon",
        price: 1099,
        color: "#e0bfae",
        image:
            "https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP825/macbookair.png")
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
