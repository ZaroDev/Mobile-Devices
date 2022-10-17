import 'package:flutter/material.dart';
import 'package:layout_desing_task/widgets/add_button.dart';

class OrderBar extends StatelessWidget {
  final int value;
  const OrderBar({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const AddButton(icon: Icons.remove),
          const SizedBox(width: 8),
          Text("$value"),
          const SizedBox(width: 8),
          const AddButton(icon: Icons.add),
        ],
      ),
    );
  }
}
