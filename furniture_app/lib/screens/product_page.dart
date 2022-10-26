import 'package:flutter/material.dart';
import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/widgets/back_app_button.dart';
import 'package:furniture_app/widgets/photo_container.dart';
import 'package:furniture_app/widgets/shopping_cart_button.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatelessWidget {
  final Product product;
  const ProductPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: product,
      child: Scaffold(
          body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          const SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: BackAppButton(),
            ),
          ),
          const SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: ShoppingCartButton(),
            ),
          ),
        ],
      )),
    );
  }
}
