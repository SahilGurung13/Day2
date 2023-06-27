import 'package:flutter/material.dart';
import 'package:flutter_day1/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/fyp.dart';
import '../themes.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items!.length,
      itemBuilder: (context, index) {
        final FYPlog = CatalogModel.items![index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(
                catalog: FYPlog,
              ),
            ),
          ),
          child: CatalogItem(FYPlog: FYPlog),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item FYPlog;

  const CatalogItem({
    Key? key,
    required this.FYPlog,
  })  : assert(FYPlog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: Row(
      children: [
        Hero(
          tag: Key(FYPlog.id.toString()),
          child: CatalogImage(
            image: FYPlog.image,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FYPlog.name.text.lg.bold.make(),
            FYPlog.description.text.caption(context).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${FYPlog.price}".text.bold.lg.red800.make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(MyTheme.darkBluishColor),
                      shape: MaterialStatePropertyAll(
                        StadiumBorder(),
                      )),
                  child: "Add to cart".text.lg.make(),
                ).wh(105, 25),
              ],
            ),
          ],
        ))
      ],
    ))
        .white
        .rounded
        .square(101)
        .make()
        .py8(); // bottom overflowed by 1.00 pixels solved
    // vxbox and container are same
  }
}
