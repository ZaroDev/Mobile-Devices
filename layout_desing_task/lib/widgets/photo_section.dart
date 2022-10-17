import 'package:flutter/material.dart';
import 'package:layout_desing_task/widgets/order_bar.dart';

class PhotoSection extends StatelessWidget {
  final int value;
  const PhotoSection({
    Key? key,
    this.value = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 64, right: 64, top: 64),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Text("Details",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Expanded(child: Image.asset("assets/burger.png")),
          OrderBar(value: value)
        ],
      ),
    );
  }
}
