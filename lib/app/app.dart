import 'package:flutter/material.dart';
import '../core/utills/color_manager.dart';
import '../core/utills/routes_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();

  static const MyApp _instance = MyApp._internal();

  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: AppColor.darkGrey,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: AppColor.white),

          elevation: 0,
        ),
      ),
      initialRoute: Routes.movieRoute,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
