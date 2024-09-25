import 'dart:convert';

class Movies {
    final int id;
    final String movie;
    final double rating;
    final String image;
    final String imdbUrl;

    Movies({
        required this.id,
        required this.movie,
        required this.rating,
        required this.image,
        required this.imdbUrl,
    });

    factory Movies.fromRawJson(String str) => Movies.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Movies.fromJson(Map<String, dynamic> json) => Movies(
        id: json["id"],
        movie: json["movie"],
        rating: json["rating"]?.toDouble(),
        image: json["image"],
        imdbUrl: json["imdb_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "movie": movie,
        "rating": rating,
        "image": image,
        "imdb_url": imdbUrl,
    };
}
