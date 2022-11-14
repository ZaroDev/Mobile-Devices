class Item {
  String name, image;
  Item({
    required this.name,
    required this.image,
  });
}

class Movie {
  String title, description, image, time, tags;
  num score, date;
  List<Item> cast;
  List<Item> alsoLiked;
  Movie({
    required this.title,
    required this.description,
    required this.image,
    required this.date,
    required this.time,
    required this.tags,
    required this.score,
    this.cast = const [],
    this.alsoLiked = const [],
  });
}
