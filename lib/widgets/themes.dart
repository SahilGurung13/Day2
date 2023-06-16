import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.red,
      fontFamily: GoogleFonts.openSans().fontFamily,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
      ));
  static ThemeData DarkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark);
}
