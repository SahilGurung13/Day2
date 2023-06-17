class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Sony Xperia XZ3",
        description: "Sony owns world",
        price: 100000,
        color: "grey",
        image:
            "https://d13o3tuo14g2wf.cloudfront.net/thumbnails%2Flarge%2FAsset+Hierarchy%2FConsumer+Assets%2FMobile+Phones%2FXperia+Series%2FXperia+1+V%2FeComm+Product+Images%2FB%2F02-Xperia+1+V_sub6_back_black.png.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9kMTNvM3R1bzE0ZzJ3Zi5jbG91ZGZyb250Lm5ldC90aHVtYm5haWxzJTJGbGFyZ2UlMkZBc3NldCtIaWVyYXJjaHklMkZDb25zdW1lcitBc3NldHMlMkZNb2JpbGUrUGhvbmVzJTJGWHBlcmlhK1NlcmllcyUyRlhwZXJpYSsxK1YlMkZlQ29tbStQcm9kdWN0K0ltYWdlcyUyRkIlMkYwMi1YcGVyaWErMStWX3N1YjZfYmFja19ibGFjay5wbmcucG5nIiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoyMTQ1NzYyMDAwfX19XX0_&Signature=bK3J4pTS0oHZMUAL00VjQMsY3wmrRArAQXASYF2PhMIUfNWzgXaAB-KdGjSpeTXaP~naMYWeTfR0ln~X-5XDHC8rQ-b5YAXyaaokal2b3sOQ962CrpX1xgUAcZ2QU9n9g-tYzhfgW6Sb30ORzlMXcnUGjkYTXcGXdeTI1VwliyCYHi0UXKoCKIaLSNLHrTfnlI1zgyrmoPy-qEeykEq9J52B0P4AqoftkQ1SxIxBl1iypqL1gzhVr~uVzCLEMM3QsGunbFxV7p~ImWPqeVa3Oh7~6EkMEcILPjBEalyiI15p9Ngsti5yG13GbK2wq0QhnASoMjIsU3twnmrXqxEFog__&Key-Pair-Id=K37BLT9C6HMMJ0")
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});
}
