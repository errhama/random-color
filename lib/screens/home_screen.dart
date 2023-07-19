import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Default background color
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    setState(() {
      // Generate a random color
      _backgroundColor = _generateRandomColor();
    });
  }

  Color _generateRandomColor() {
    // Generate random RGB values
    final int red = Random().nextInt(256);
    final int green = Random().nextInt(256);
    final int blue = Random().nextInt(256);

    return Color.fromARGB(255, red, green, blue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Solid Software"),
      ),
      body: GestureDetector(
        onTap: _changeBackgroundColor,
        child: Container(
          color: _backgroundColor,
          child: Center(
            child: Text(
              "Hello there",
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
