import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // build() method is used to build the widget tree.
    return MaterialApp(
      // MaterialApp is a widget that implements the basic material design visual layout structure.
      home: Scaffold(
        // Scaffold is a widget that provides a framework to implement the basic material design layout of the application.
        body: Center(
          // Container is a widget that allows you to customize its child widget.
          child: Text(
              "Welcome to Flutter World"), // Text is a widget that allows you to display text.
        ),
      ),
    );
  }
}
