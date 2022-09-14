part of 'movie_bloc.dart';

@immutable
abstract class MovieState extends Equatable {

  @override
  List<Object> get props => [];
}

class MovieInitial extends MovieState {}
