import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.openSans().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        secondaryHeaderColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true, // added this line
        ),
        textTheme: TextTheme(
          bodySmall: TextStyle(
            color: Colors.white,
          ),
        ),
        // textTheme: Theme.of(context).textTheme
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        textTheme: Theme.of(context).textTheme,
        fontFamily: GoogleFonts.openSans().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkcreamColor,
        secondaryHeaderColor: Colors.white,
        colorScheme: ColorScheme.light(brightness: Brightness.dark),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
          centerTitle: true,
          color: Colors.black, // changed color to black
          elevation: 0.0,
          iconTheme:
              IconThemeData(color: Colors.white), // changed color to white
          // titleTextStyle: Theme.of(context).textTheme.bodyLarge,
        ),
        primaryTextTheme: TextTheme(
          bodySmall: TextStyle(
            color: Colors.white,
          ),
        ),
        // primaryTextTheme: Theme.of(context).primaryTextTheme
      );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Colors.grey.shade900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
