import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movie = context.watch<Movie>();
    return ReadMoreText(
      movie.description,
      trimLines: 4,
      trimMode: TrimMode.Line,
      trimCollapsedText: "Read More",
      trimExpandedText: "Less",
      style: const TextStyle(
          color: Colors.grey, fontWeight: FontWeight.w100, height: 1.5),
      moreStyle: const TextStyle(
          color: Colors.red, fontWeight: FontWeight.bold, height: 1.4),
      lessStyle: const TextStyle(
          color: Colors.red, fontWeight: FontWeight.bold, height: 1.4),
    );
  }
}
