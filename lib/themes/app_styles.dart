import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension FontSetting on TextStyle {
  TextStyle withLato() => GoogleFonts.lato(textStyle: this);
  TextStyle withLemon() => GoogleFonts.lemon(textStyle: this);
}
