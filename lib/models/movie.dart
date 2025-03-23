class Movie {
  String title;
  String backdropPath;
  String originalTitle;
  String overview;
  String mediaType;
  String originalLanguage;
  String posterPath;
  String releaseDate;
  double voteAverage;
  double popularity;

  Movie({
    required this.title,
    required this.backdropPath,
    required this.originalTitle,
    required this.overview,
    required this.mediaType,
    required this.originalLanguage,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
    required this.popularity,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json["title"].toString(),
      backdropPath: json["backdrop_path"].toString(),
      originalTitle: json["original_title"].toString(),
      overview: json["overview"].toString(),
      mediaType: json["media_type"].toString(),
      originalLanguage: json["original_language"].toString(),
      posterPath: json["poster_path"].toString(),
      releaseDate: json["release_date"].toString(),
      voteAverage: json["vote_average"].toDouble(),
      popularity: json["popularity"].toDouble(),
    );
  }
}
