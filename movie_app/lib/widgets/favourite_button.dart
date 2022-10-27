import 'package:flutter/material.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: IconButton(
          icon: Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          onPressed: null,
        ),
      ),
    );
  }
}
