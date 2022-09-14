import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String overview;
  final String title;
  final String releaseDate;
  final double voteAverage;

  const Movie({
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.overview,
    required this.title,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  List<Object> get props => [
        backdropPath,
        genreIds,
        id,
        overview,
        title,
        releaseDate,
        voteAverage,
      ];

//
// Movie.fromJson(Map<String, dynamic> json) {
//   backdropPath = json['backdrop_path'];
//   genreIds = json['genre_ids'].cast<int>();
//   id = json['id'];
//   overview = json['overview'];
//   title = json['title'];
//   releaseDate = json['release_date'];
//   voteAverage = json['vote_average'];
// }
//
// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   data['backdrop_path'] = this.backdropPath;
//   data['genre_ids'] = this.genreIds;
//   data['id'] = this.id;
//   data['overview'] = this.overview;
//   data['title'] = this.title;
//   data['release_date'] = this.releaseDate;
//   data['vote_average'] = this.voteAverage;
//   return data;
// }

}
