import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final days = 13;
    return Scaffold(
      appBar: AppBar(
        title: Text("FYP"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days flutter Day1"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
