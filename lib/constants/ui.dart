import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xFF006CE6);
const accentColor = Color(0xFFFF5A10);
const backgroundColor = Color(0xFFF6F6F6);

ThemeData themeData(BuildContext context) {
  final textTheme = Theme.of(context).textTheme;

  return ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      textTheme: GoogleFonts.poppinsTextTheme(textTheme).copyWith(),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    textTheme: GoogleFonts.poppinsTextTheme(textTheme).copyWith(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}