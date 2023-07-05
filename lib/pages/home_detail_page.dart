// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_day1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/fyp.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.canvasColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.bold.xl2.red700.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheme.darkBluishColor),
                  shape: MaterialStatePropertyAll(
                    StadiumBorder(),
                  )),
              child: "Buy".text.xl2.make(),
            ).w24(context),
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              // animation
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                // it's like a container, that render brand name and description
                child: VxArc(
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              height: 25,
              child: Container(
                color: context.canvasColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text
                        .color(context.theme.secondaryHeaderColor)
                        .xl3
                        .bold
                        .make(),
                    catalog.description.text
                        .color(context.theme.secondaryHeaderColor)
                        .textStyle(context.captionStyle)
                        .lg
                        .make(),
                    "Amet dolores erat gubergren consetetur dolore. Ut clita et dolor takimata accusam clita, stet amet diam diam labore et, ea et et sanctus rebum est magna lorem, et et nonumy dolor justo clita amet sanctus. Kasd tempor dolor est nonumy clita duo sea et justo, sea vero et ipsum diam."
                        .text
                        .color(context.theme.secondaryHeaderColor)
                        .lg
                        .textStyle(context.captionStyle)
                        .make()
                        .py16(),
                  ],
                ).py32(),
              ),
            ))
          ],
        ).color(context.cardColor),
      ),
    );
  }
}
