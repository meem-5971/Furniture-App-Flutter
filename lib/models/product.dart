class Product {
  final String id;
  final String title;
  final String subTitle;
  final String description;
  final double price;
  final String category;
  final String imageUrl;

  Product({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.price,
    required this.category,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      subTitle: json['subTitle'],
      description: json['description'],
      price: double.tryParse(json['price'].toString()) ?? 0.0,
      category: json['category'],
      imageUrl: json['image'],
    );
  }
}
