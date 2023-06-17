import 'package:flutter/material.dart';
import 'package:flutter_day1/models/fyp.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(13, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("FYP"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
