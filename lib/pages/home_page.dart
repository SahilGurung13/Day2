import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_day1/models/fyp.dart';
import 'package:flutter_day1/utils/routes.dart';
import 'package:flutter_day1/widgets/themes.dart';
import 'dart:convert';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          backgroundColor: Colors.green,
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
        ),
        // appBar: AppBar(
        //   title: Text("FYP"),
        // ),
        body: SafeArea(
          //above bottom buttons
          child: Container(
            //inside body
            padding: Vx.m24,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FYPheader(),
                if (CatalogModel.items != null &&
                    CatalogModel.items!.isNotEmpty)
                  CatalogList().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
    // Padding(
    //     padding: const EdgeInsets.all(6.0),
    //     child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
    //         ? GridView.builder(
    //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //               crossAxisCount: 2,
    //               mainAxisSpacing: 10,
    //               crossAxisSpacing: 10,
    //             ),
    //             itemBuilder: (context, index) {
    //               final item = CatalogModel.items![index];
    //               return Card(
    //                   clipBehavior: Clip.antiAlias,
    //                   shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(15)),
    //                   child: GridTile(
    //                     header: Container(
    //                       child: Text(
    //                         item.name,
    //                         style: TextStyle(color: Colors.white),
    //                       ),
    //                       decoration: BoxDecoration(
    //                         color: Colors.red,
    //                       ),
    //                       padding: EdgeInsets.all(12),
    //                     ),
    //                     child: Image.network(
    //                       item.image,
    //                       fit: BoxFit.cover,
    //                     ),
    //                     footer: Container(
    //                       child: Text(
    //                         item.price.toString(),
    //                         style: TextStyle(color: Colors.red),
    //                       ),
    //                       decoration: BoxDecoration(
    //                         color: Colors.white,
    //                       ),
    //                       padding: EdgeInsets.all(12),
    //                     ),
    //                   ));
    //             },
    //             itemCount: CatalogModel.items?.length,
    //           )
    //         : Center(
    //             child: CircularProgressIndicator(),
    //           ),
    //   ),
    //   drawer: MyDrawer(),
    // );
  }
}
