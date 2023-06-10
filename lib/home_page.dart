import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final days = 13;
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days flutter Day1"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
