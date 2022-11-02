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
          image: 'assets/top_gun.png',
          score: 4.5,
          date: 2022,
          time: "2h 17m",
          tags: "Action, adventure",
          cast: [
            Item(image: "assets/actors/tom_cruise.jpeg", name: "Tom Cruise"),
            Item(image: "assets/actors/val_kilmer.jpeg", name: "Val Kilmer"),
            Item(
                image: "assets/actors/jennifer_conelly.jpeg",
                name: "Jennifer Connely"),
            Item(
                image: "assets/actors/milles_teller.jpg", name: "Miles Teller"),
            Item(image: "assets/actors/glen_powell.jpg", name: "Glen Powell"),
            Item(image: "assets/actors/jon_hamm.jpg", name: "Jon Hamm"),
            Item(
                image: "assets/actors/monica_barbaro.jpg",
                name: "Monica Barbaro"),
          ],
          alsoLiked: [
            Item(name: "The Batman", image: "assets/movies/the_batman.jpg"),
            Item(name: "TopGun", image: "assets/movies/topgun.jpg"),
            Item(name: "Spectre", image: "assets/movies/spectre.jpg"),
            Item(name: "Bullet Train", image: "assets/movies/bullet_train.jpg"),
          ],
        ),
      ),
    );
  }
}
