import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:provider/provider.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movie = context.watch<Movie>();
    return Align(
      alignment: Alignment.center,
      child: Text(
        movie.title,
        style: const TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
