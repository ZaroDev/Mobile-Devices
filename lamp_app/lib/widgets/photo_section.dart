import 'package:flutter/material.dart';
import 'package:lamp_app/widgets/color_sample.dart';

class PhotoSection extends StatelessWidget {
  const PhotoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Image.asset("assets/lamp_photo.png")),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ColorSample(name: "White", color: Colors.white),
                SizedBox(width: 16),
                ColorSample(
                    name: "Yellow", color: Colors.yellow, selected: true),
                SizedBox(width: 16),
                ColorSample(name: "Orange", color: Colors.orange),
              ],
            ),
          )
        ],
      ),
    );
  }
}
