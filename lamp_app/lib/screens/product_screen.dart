import 'package:flutter/material.dart';
import 'package:lamp_app/widgets/info_section.dart';
import 'package:lamp_app/widgets/photo_section.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Expanded(flex: 4, child: PhotoSection()),
          Expanded(flex: 5, child: InfoSection()),
        ],
      ),
    );
  }
}
