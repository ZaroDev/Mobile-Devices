import 'dart:ui';

enum Availability { inStock, outOfStock, canPreorder }

class Product {
  String name, type, description, imageAsset;
  num staring, reviews, price;
  List<Color> colors;
  Availability availability;
  Product(
      {required this.name,
      required this.imageAsset,
      required this.type,
      required this.description,
      required this.staring,
      required this.reviews,
      required this.price,
      required this.availability,
      this.colors = const []});
}
