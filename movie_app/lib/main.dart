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
      home: MovieScreen(
        product: Movie(
          title: "Top Gun: Maverick",
          description:
              "After more than thirty years of service as one of the Navy’s top aviators, Pete “Maverick” Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him. When he finds himself training a detachment of Top Gun graduates for a specialized mission the likes of which no living pilot has ever seen, Maverick encounters Lt. Bradley Bradshaw (Miles Teller), call sign: “Rooster,” the son of Maverick’s late friend and Radar Intercept Officer Lt. Nick Bradshaw, aka “Goose.”",
          image: "movies/top_gun.jpg",
          score: 4.5,
          date: 2022,
          time: "2h 17m",
          tags: "Action, adventure",
          cast: [
            Item(image: "actors/tom_cruise.jpg", name: "Tom Cruise"),
            Item(image: "actors/val_kilmer.jpg", name: "Val Kilmer"),
            Item(
                image: "actors/jennifer_conelly.jpg", name: "Jennifer Connely"),
            Item(image: "actors/milles_teller.jpg", name: "Miles Teller"),
            Item(image: "actors/glen_powell.jpg", name: "Glen Powell"),
            Item(image: "actors/jon_hamm.jpg", name: "Jon Hamm"),
            Item(image: "actors/monica_barbaro.jpg", name: "Monica Barbaro"),
          ],
          alsoLiked: [
            Item(name: "The Batman", image: "movies/the_batman.jpg"),
            Item(name: "TopGun", image: "movies/topgun.jpg"),
            Item(name: "Spectre", image: "movies/spectre.jpg"),
            Item(name: "Bullet Train", image: "movies/bullet_train.jpg"),
          ],
        ),
      ),
    );
  }
}
