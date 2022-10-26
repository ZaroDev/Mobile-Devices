import 'package:flutter/material.dart';
import 'package:furniture_app/models/product.dart';
import 'package:provider/provider.dart';

class PhotoContainer extends StatelessWidget {
  const PhotoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = context.watch<Product>();
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            scale: 2,
            product.imageAsset,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
