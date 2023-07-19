import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_color_app/screens/home_screen.dart';

void main() {
  runApp(RandomColorApp());
}

class RandomColorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
