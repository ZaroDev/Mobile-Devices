import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

class MoviePortrait extends StatelessWidget {
  const MoviePortrait({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Item movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 130,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            image: DecorationImage(
              image: AssetImage(movie.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(movie.name, style: const TextStyle(color: Colors.white54)),
      ],
    );
  }
}
