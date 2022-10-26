import 'package:flutter/material.dart';
import 'dart:math' as math;

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.file_download_outlined,
          size: 35,
          color: Colors.red,
        ),
        const SizedBox(width: 10),
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(math.pi),
          child: const Icon(
            Icons.reply_rounded,
            size: 35,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
