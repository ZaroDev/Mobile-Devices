import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
      child:
          const Icon(Icons.play_arrow_rounded, color: Colors.white, size: 50),
    );
  }
}
