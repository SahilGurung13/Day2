import 'package:flutter/material.dart';
import 'package:flutter_day1/pages/cart_page.dart';
import 'package:flutter_day1/pages/home_page.dart';
import 'package:flutter_day1/pages/login_page.dart';
import 'package:flutter_day1/utils/routes.dart';
import 'package:flutter_day1/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.LightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.DarkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LogInPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.LoginRoute: (context) => LogInPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
