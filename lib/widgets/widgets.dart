import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar(
  String title,
) {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    elevation: 0.0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    title: Text(title,
        style: GoogleFonts.lato(color: Colors.black, letterSpacing: 1)),
  );
}
