import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

/** COLOR **/
const Color mainColor = Color(0xFF7456FF);
const Color secondaryColor = Color(0xFF8368FF);
const Color tertiaryPurple = Color(0xFFA693FF);
const Color primaryBlack = Color(0xFF0C0C0C);
const Color secondaryBlack = Color(0xFF0F0F0F);
const Color primaryGray = Color(0xFF707070);
const Color secondaryGray = Color(0xFF999999);
const Color ashLavender = Color(0xFFF5F2FF);

/** TEXT STYLE **/

TextStyle getHeading1() {
  return GoogleFonts.poppins().copyWith(
    color: ashLavender,
    fontSize: 40,
    fontWeight: FontWeight.w600,
  );
}

/** TRANSLATION **/
const String helloGreetings = 'Hello There';