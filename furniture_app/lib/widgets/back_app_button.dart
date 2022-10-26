import 'package:flutter/material.dart';

class BackAppButton extends StatelessWidget {
  const BackAppButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
          width: 40,
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(
              Radius.circular(18),
            ),
          ),
          child: const BackButton(color: Colors.white)),
    );
  }
}
