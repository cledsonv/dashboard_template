import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kPrimary = Color(0xff368BDA);
const Color kSecondary = Color(0xff4391F6);

final ThemeData lightTheme = ThemeData(
  primaryColor: kPrimary,
  colorScheme: const ColorScheme.light(
    primary: kPrimary,
    secondary: kSecondary,
    onPrimary: Colors.black,
    onSecondary: Colors.white,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: kPrimary,
  ),
  textTheme: GoogleFonts.lexendDecaTextTheme(),
);

final ThemeData darkTheme = ThemeData(
  primaryColor: kPrimary,
  colorScheme: const ColorScheme.dark(
      primary: kPrimary,
      secondary: kSecondary,
      onPrimary: Colors.white,
      onSecondary: Colors.black),
  buttonTheme: const ButtonThemeData(
    buttonColor: kPrimary,
  ),
  textTheme: GoogleFonts.lexendDecaTextTheme(),
);
