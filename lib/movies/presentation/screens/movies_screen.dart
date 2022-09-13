import 'package:flutter/material.dart';


class MovieScreen extends StatelessWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie App'),
      ),
      body: const Center(
        child: Text('Movie'),
      ),
    );
  }

}

