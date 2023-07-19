import 'package:flutter/material.dart';
import 'package:random_color_app/screens/home_screen.dart';

void main() {
  runApp(const RandomColorApp());
}

class RandomColorApp extends StatelessWidget {
  const RandomColorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
