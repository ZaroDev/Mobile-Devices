import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:provider/provider.dart';

class MovieSpecs extends StatelessWidget {
  const MovieSpecs({
    Key? key,
  }) : super(key: key);

  final textStyle = const TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    final movie = context.watch<Movie>();
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        const Icon(Icons.calendar_month_rounded, color: Colors.white, size: 20),
        Text("${movie.date}", style: textStyle),
        Text("|", style: textStyle),
        const Icon(Icons.watch_later_rounded, color: Colors.white, size: 20),
        Text(movie.time, style: textStyle),
        Text("|", style: textStyle),
        const Icon(Icons.videocam_rounded, color: Colors.white, size: 20),
        Text(movie.tags, style: textStyle),
      ],
    );
  }
}
