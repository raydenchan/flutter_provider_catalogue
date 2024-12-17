import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  colorSchemeSeed: Colors.blue,
  textTheme: TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: 22,
      color: Colors.black,
    ),
    displaySmall: GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Colors.black,
    ),
    // Customizing or adding new names (this is your custom category)
    bodySmall: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: Colors.grey,
    ),
  ),
);
