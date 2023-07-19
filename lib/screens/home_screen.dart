import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_color_app/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Default background color
  Color _backgroundColor = Colors.white;

  // Default text
  String _displayText = 'Hello there';

  void _changeBackgroundColorAndText() {
    setState(() {
      // Generate a random color
      _backgroundColor = _generateRandomColor();

      // Change the displayed text
      _displayText = _generateRandomText();
    });
  }

  // generate random color functionality
  Color _generateRandomColor() {
    // Generate random RGB values
    final int red = Random().nextInt(256);
    final int green = Random().nextInt(256);
    final int blue = Random().nextInt(256);

    return Color.fromARGB(255, red, green, blue);
  }

// generate random test functionality
  String _generateRandomText() {
    return texts[Random().nextInt(texts.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Solid Software"),
      ),
      body: GestureDetector(
        onTap: _changeBackgroundColorAndText,
        child: Container(
          color: _backgroundColor,
          child: Center(
            child: Text(
              _displayText,
              style: const TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
