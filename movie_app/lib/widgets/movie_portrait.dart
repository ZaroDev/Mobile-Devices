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
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          Container(
            width: 150,
            height: 200,
            padding: const EdgeInsets.only(right: 20),
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
      ),
    );
  }
}
