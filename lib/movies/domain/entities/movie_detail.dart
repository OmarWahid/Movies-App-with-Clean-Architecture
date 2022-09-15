import 'package:equatable/equatable.dart';

class MovieDetail extends Equatable {
  final String backdropPath;
  final List<Genres> genres;
  final int id;
  final String overview;
  final String releaseDate;
  final int runtime;
  final String title;
  final double voteAverage;

  const MovieDetail({
    required this.backdropPath,
    required this.genres,
    required this.id,
    required this.overview,
    required this.releaseDate,
    required this.runtime,
    required this.title,
    required this.voteAverage,
  });

  @override
  List<Object> get props => [
        backdropPath,
        genres,
        id,
        overview,
        releaseDate,
        runtime,
        title,
        voteAverage,
      ];
}

class Genres extends Equatable {
  final int id;
  final String name;

  const Genres({required this.id, required this.name});

  factory Genres.fromJson(Map<String, dynamic> json) => Genres(
        id: json['id'],
        name: json['name'],
      );

  @override
  List<Object> get props => [id, name];
}

// class MovieDetail {
//    final String backdropPath;
//   late final List<Genres> genres;
//   late final int id;
//   late final String overview;
//   late final String releaseDate;
//   late final int runtime;
//   late final String title;
//   late final double voteAverage;
//
//   MovieDetail({
//     required this.backdropPath,
//     required this.genres,
//     required this.id,
//     required this.overview,
//     required this.releaseDate,
//     required this.runtime,
//     required this.title,
//     required this.voteAverage,
//   });
//
//   MovieDetail.fromJson(Map<String, dynamic> json) {
//     backdropPath = json['backdrop_path'];
//     if (json['genres'] != null) {
//       genres = <Genres>[];
//       json['genres'].forEach((v) {
//         genres.add(Genres.fromJson(v));
//       });
//     }
//     id = json['id'];
//     overview = json['overview'];
//     releaseDate = json['release_date'];
//     runtime = json['runtime'];
//     title = json['title'];
//     voteAverage = json['vote_average'];
//   }
// }
//
// class Genres {
//   int? id;
//   String? name;
//
//   Genres({this.id, this.name});
//
//   Genres.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//   }
// }
