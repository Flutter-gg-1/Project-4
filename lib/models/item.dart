class Item {
  final int id;
  final String name;
  final String description;
  final double rating;
  final int reviews;
  final String imagePath;
  final String secondImagePath;
  final String category;
  final int stock;
  final double price;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.rating,
    required this.reviews,
    required this.imagePath,
    required this.secondImagePath,
    required this.category,
    required this.stock,
    required this.price,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        rating: json['rating'],
        reviews: json['reviews'],
        imagePath: json['imagePath'],
        secondImagePath: json['secondImagePath'],
        category: json['category'],
        stock: json['stock'],
        price: json['price']);
  }

  toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'rating': rating,
      'reviews': reviews,
      'imagePath': imagePath,
      'secondImagePath': secondImagePath,
      'category': category,
      'stock': stock,
      'price': price
    };
  }
}
