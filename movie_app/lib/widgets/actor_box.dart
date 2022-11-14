import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

class ActorBox extends StatelessWidget {
  final Item actor;
  const ActorBox({
    Key? key,
    required this.actor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(actor.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            actor.name,
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 10,
              fontWeight: FontWeight.w100,
            ),
          )
        ],
      ),
    );
  }
}
