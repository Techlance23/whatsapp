import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextStyle titleTextstyle =
      GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16);
  static TextStyle titleTextstyleWhite = GoogleFonts.poppins(
      fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white);
  static TextStyle subtitleTextstyle =
      GoogleFonts.poppins(fontWeight: FontWeight.normal, fontSize: 12);
  static TextStyle subtitleTextstyleWhite = GoogleFonts.poppins(
      fontWeight: FontWeight.normal, fontSize: 12, color: Colors.white);
}
