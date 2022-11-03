import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/movie_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Product Sans"),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Scaffold(
                body: Stack(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/movie');
                  },
                  child: Text("Goto movie"),
                )
              ],
            )),
        '/movie': (context) => MovieScreen(
              product: Movie(
                title: "Top Gun: Maverick",
                description:
                    "After more than thirty years of service as one of the Navy’s top aviators, Pete “Maverick” Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him. When he finds himself training a detachment of Top Gun graduates for a specialized mission the likes of which no living pilot has ever seen, Maverick encounters Lt. Bradley Bradshaw (Miles Teller), call sign: “Rooster,” the son of Maverick’s late friend and Radar Intercept Officer Lt. Nick Bradshaw, aka “Goose.”",
                image: 'assets/top_gun.png',
                score: 4.5,
                date: 2022,
                time: "2h 17m",
                tags: "Action, adventure",
                cast: [
                  Item(image: 'actors/tom_cruise.png', name: "Tom Cruise"),
                  Item(image: 'actors/val_kilmer.png', name: "Val Kilmer"),
                  Item(
                      image: 'actors/jennifer_conelly.png',
                      name: "Jennifer Connely"),
                  Item(image: 'actors/milles_teller.png', name: "Miles Teller"),
                  Item(image: 'actors/glen_powell.png', name: "Glen Powell"),
                  Item(image: 'actors/jon_hamm.png', name: "Jon Hamm"),
                  Item(
                      image: 'actors/monica_barbaro.png',
                      name: "Monica Barbaro"),
                ],
                alsoLiked: [
                  Item(
                      name: "The Batman",
                      image: 'assets/movies/the_batman.png'),
                  Item(name: "TopGun", image: 'assets/movies/topgun.png'),
                  Item(name: "Spectre", image: 'assets/movies/spectre.png'),
                  Item(
                      name: "Bullet Train",
                      image: 'assets/movies/bullet_train.png'),
                ],
              ),
            ),
        '/first': (context) => const Scaffold(),
      },
    );
  }
}
