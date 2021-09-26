import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  primarySwatch: Colors.green,
  scaffoldBackgroundColor: const Color(0xff232323),
  cardColor: const Color(0xff11130E),
  canvasColor: const Color(0xff16AB51),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: const Color(0xff929292),
    unselectedItemColor: Colors.grey[700],
    selectedItemColor: Colors.white,
    selectedLabelStyle:
        GoogleFonts.montserrat(fontSize: 10, color: Colors.white),
  ),
  textTheme: TextTheme(
    headline1: GoogleFonts.montserrat(
      fontSize: 20,
      color: const Color(0xff929292),
      fontWeight: FontWeight.w300,
    ),
    headline2: GoogleFonts.montserrat(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    headline3: GoogleFonts.montserrat(
      fontSize: 15,
      color: const Color(0xff232323),
      fontWeight: FontWeight.w700,
    ),
    headline4: GoogleFonts.montserrat(
      fontSize: 12,
      color: const Color(0xff929292),
      fontWeight: FontWeight.w500,
    ),
    headline5: GoogleFonts.montserrat(
      fontSize: 15,
      color: const Color(0xff16AB51),
      fontWeight: FontWeight.w500,
    ),
    bodyText1: GoogleFonts.montserrat(
      fontSize: 20,
      color: const Color(0xff929292),
      fontWeight: FontWeight.w600,
    ),
  ),
);
