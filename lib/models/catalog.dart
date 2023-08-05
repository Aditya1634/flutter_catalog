class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image; 

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [
  Item(
      id: "1",
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image:
          "https://images.unsplash.com/photo-1602522558517-4b7bce5a5c6f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwMTJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80"),
];

