import 'package:flutter/material.dart';
import 'core/services/services_locator.dart';
import 'movies/presentation/screens/movie_screen.dart';

void main() {
  ServicesLocator().init() ;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MovieScreen(),
    );
  }
}
