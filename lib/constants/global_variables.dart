import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'font_size.dart';

// COLORS
// const appBarGradient = LinearGradient(
//   colors: [
//     Color.fromARGB(255, 29, 201, 192),
//     Color.fromARGB(255, 125, 221, 216),
//   ],
//   stops: [0.5, 1.0],
// );
const Color scaffoldBackgroundColor = Colors.white;
const primaryColor = Color(0xffA0E9FF);
const appBarColor = Colors.black26;
const bgColor = Colors.orange;
const greyBackgroundColor = Color(0xffebecee);
var selectedNavBarColor = Colors.cyan[800]!;
const unselectedNavBarColor = Colors.black87;

const headerStyle =
    TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold);
const titleStyle =
    TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);
const subtitleStyle = TextStyle(color: Colors.grey, fontSize: 20);
TextStyle normalStyle = GoogleFonts.poppins(
  color: ThemeColor.grey,
  fontSize: FontSize.medium,
  fontWeight: FontWeight.w600,
);
TextStyle fieldStyle =GoogleFonts.poppins(
  color: ThemeColor.black, fontSize: FontSize.large
);
TextStyle dropdownStyle =GoogleFonts.poppins(
  color: ThemeColor.black,fontSize: FontSize.large,
);
TextStyle hintStyle = GoogleFonts.poppins(
  color: ThemeColor.textFieldHintColor,
  fontSize: FontSize.large,
  fontWeight: FontWeight.w400,
);
TextStyle titleTextStyle = GoogleFonts.poppins(
  color: ThemeColor.textFieldBgColor,
  fontSize: FontSize.xLarge,
  fontWeight: FontWeight.w500,
);