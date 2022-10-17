import 'package:flutter/material.dart';
import 'package:layout_desing_task/widgets/info_section.dart';
import 'package:layout_desing_task/widgets/photo_section.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: const [
          Expanded(
              flex: 5,
              child: PhotoSection(
                value: 2,
              )),
          Expanded(flex: 4, child: InfoSection()),
        ],
      ),
    );
  }
}
