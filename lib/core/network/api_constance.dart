class ApiConstance {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String appKey = 'e613aa671ba32dc306753fcb43d5c9b9';
  static const String nowPlayingMoviesPath =
      '$baseUrl/movie/now_playing?api_key=$appKey';
  static const String popularMoviesPath =
      '$baseUrl/movie/popular?api_key=$appKey';
  static const String topRatedMoviesPath =
      '$baseUrl/movie/top_rated?api_key=$appKey';
}
