import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final IconData icon;
  const AddButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Icon(icon, color: Colors.white),
    );
  }
}
