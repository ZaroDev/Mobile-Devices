import 'package:flutter/material.dart';
import 'package:movie_app/widgets/actions_button.dart';

class StoryLineHeader extends StatelessWidget {
  const StoryLineHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Story Line",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          ActionButtons(),
        ],
      ),
    );
  }
}
