import 'package:flutter/material.dart';

class ProductFeature extends StatelessWidget {
  final String name;
  final num value;
  final String units;
  const ProductFeature({
    Key? key,
    required this.units,
    required this.value,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset("assets/$name.png")),
          const SizedBox(height: 4),
          Text("$value $units"),
        ],
      ),
    );
  }
}
