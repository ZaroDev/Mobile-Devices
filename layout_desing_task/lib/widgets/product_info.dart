import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final String name;
  final String time;
  const ProductInfo({
    Key? key,
    required this.name,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(name,
                style: const TextStyle(
                    fontSize: 26, fontWeight: FontWeight.bold))),
        const Icon(Icons.schedule, color: Colors.black54),
        Text(time,
            textAlign: TextAlign.end,
            style: const TextStyle(color: Colors.black54))
      ],
    );
  }
}
