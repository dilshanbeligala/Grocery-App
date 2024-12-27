class GroceryItem {
  final int id;
  final String name;
  final double price;
  final String image;

  GroceryItem({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  factory GroceryItem.fromJson(Map<String, dynamic> json) {
    return GroceryItem(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
    );
  }
}
