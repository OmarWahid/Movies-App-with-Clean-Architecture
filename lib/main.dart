import 'package:flutter/material.dart';
import 'core/services/services_locator.dart';
import 'core/utills/color_manager.dart';
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
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: ColorManager.darkGrey,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
        ),
      ),
      home: const MovieScreen(),
    );
  }
}
