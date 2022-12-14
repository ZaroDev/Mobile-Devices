import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/actor_box.dart';
import 'package:movie_app/widgets/description.dart';
import 'package:movie_app/widgets/favourite_button.dart';
import 'package:movie_app/widgets/movie_portrait.dart';

import 'package:movie_app/widgets/movie_specs.dart';
import 'package:movie_app/widgets/movie_title.dart';
import 'package:movie_app/widgets/play_button.dart';
import 'package:movie_app/widgets/return_button.dart';
import 'package:movie_app/widgets/story_line_header.dart';
import 'package:provider/provider.dart';

class MovieScreen extends StatelessWidget {
  final Movie product;
  const MovieScreen({
    Key? key,
    required this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: product,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                decoration: backgroundImage(),
                child: Container(
                  decoration: backgroundGradient(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 130),
                      const PlayButton(),
                      const SizedBox(height: 170),
                      const MovieTitle(),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          const SizedBox(width: 10),
                          Text("${product.score}",
                              style: const TextStyle(color: Colors.white)),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const MovieSpecs(),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const StoryLineHeader(),
                            const SizedBox(height: 20),
                            const Description(),
                            const SizedBox(height: 40),
                            const Text(
                              "The Cast",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              height: 120,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  for (final actor in product.cast)
                                    ActorBox(actor: actor),
                                ],
                              ),
                            ),
                            const SizedBox(height: 40),
                            const Text(
                              "Users also Liked",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              height: 250,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  for (final movie in product.alsoLiked)
                                    MoviePortrait(movie: movie),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SafeArea(
                child: ReturnButton(),
              ),
              const SafeArea(
                child: FavouriteButton(),
              )
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration backgroundImage() {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage(product.image),
        fit: BoxFit.cover,
      ),
    );
  }

  BoxDecoration backgroundGradient() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: const [
          0.1,
          0.2,
          0.5,
        ],
        colors: [
          Colors.white.withAlpha(20),
          const Color.fromARGB(20, 2, 12, 56),
          const Color.fromARGB(255, 28, 33, 59),
        ],
      ),
    );
  }
}
