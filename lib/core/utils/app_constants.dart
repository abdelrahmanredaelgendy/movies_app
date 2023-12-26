class AppConstants {
  static const String baseUrl = "https://api.themoviedb.org/3";

  static const String apiKey = "61a22f561f8f06ae73b6515938bf314b";
  static const String nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String topRatedMoviesPath =
      "$baseUrl/movie/top_rated?api_key=$apiKey";
  static const String popularMoviesPath =
      "$baseUrl/movie/popular?api_key=$apiKey";
}
