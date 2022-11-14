import 'package:flutter/material.dart';
import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/screens/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(
          product: Product(
              name: "Clive 94.9\"Velvet",
              type: "Leather Sofa",
              imageAsset:
                  'https://images.hola.com/imagenes/decoracion/20210917195817/sofas-minimalistas-para-salones-modernos-am/0-992-817/sofa-minimalista-14t-t.jpg',
              price: 1500,
              availability: Availability.inStock,
              staring: 4.5,
              reviews: 123,
              description:
                  "Occaecat consequat ex cillum veniam commodo voluptate velit voluptate nostrud."
                  "Officia laboris nostrud duis eiusmod consequat ullamco."
                  "Consectetur adipisicing eu adipisicing ipsum magna nostrud ea ipsum labore laboris laborum consequat et excepteur.",
              colors: [
            Colors.pink,
            Colors.green,
            Colors.blue,
            Colors.black,
          ])),
    );
  }
}
