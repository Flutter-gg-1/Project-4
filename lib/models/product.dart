// class to represent products in shopex
class Product {
  final String name;
  final String price;
  final String pic;
  final String offer;
  final String section;
  final int stars;

  Product({required this.name, required this.price, required this.pic, required this.offer, required this.section, required this.stars});
  
  factory Product.fromJson(Map<String,dynamic> json) {
    return Product(name: json['name'], price: json['price'], pic: json['pic'], offer: json['offer'], section: json['section'], stars: json['stars']);
  }

  Map<String,dynamic> toJson() {
    return {
      'name' : name,
      'price' : price,
      'pic' : pic,
      'offer' : offer,
      'section' : section,
      'stars' : stars
    };
  }
}