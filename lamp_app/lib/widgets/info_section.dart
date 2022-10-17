import 'package:flutter/material.dart';
import 'package:lamp_app/widgets/product_info.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(children: [
            const Text(
              "Melody lamp",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            FloatingActionButton(
              onPressed: () {},
              mini: true,
              backgroundColor: Colors.amberAccent,
              child: const Icon(Icons.favorite),
            ),
          ]),
          const SizedBox(height: 20),
          const Text(
            "Qui magna aute quis excepteur voluptate ex sit do eu cupidatat reprehenderit dolor in."
            "Sint aliquip exercitation proident irure."
            "Eu officia enim aliquip voluptate mollit labore.",
            style: TextStyle(color: Colors.grey, height: 1.4),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ProductFeature(name: "lamp", value: 22, units: "W"),
              ProductFeature(name: "vruler", value: 28, units: "cm"),
              ProductFeature(name: "hruler", value: 26, units: "cm"),
              ProductFeature(name: "plug", value: 1.6, units: "m"),
            ],
          )
        ],
      ),
    );
  }
}
