import 'package:flutter/material.dart';

class PriceInfo extends StatelessWidget {
  final String price;
  final String rating;
  const PriceInfo({
    Key? key,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            price,
            style: const TextStyle(
                color: Colors.amber, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const Icon(Icons.star, color: Colors.yellow),
        Text("($rating)"),
      ],
    );
  }
}
