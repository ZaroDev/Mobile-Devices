import 'package:flutter/material.dart';

class ColorSample extends StatelessWidget {
  final String name;
  final Color color;
  final bool selected;
  const ColorSample({
    Key? key,
    required this.name,
    required this.color,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = selected ? 15 : 12;
    return Column(
      children: [
        Container(
          width: 12,
          height: 40,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            //borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 2),
                blurRadius: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Text(name, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
