import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Color Style
Color primaryColor = const Color(0xff5843BE);
Color secondaryColor = const Color(0xFFFF9376);
Color supportColor = const Color(0xFFFF5B5B);
Color buttonColor = const Color(0xff7F74EB);

//space
double edge = 24;

//Text Style
TextStyle basicTextStyle = GoogleFonts.poppins(
    color: Color(0xFF7A7E86), fontSize: 14, fontWeight: FontWeight.w300);
TextStyle primaryTextStyle = GoogleFonts.poppins(
    color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16);
TextStyle TitleTextStyle = GoogleFonts.poppins(
    color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24);
TextStyle ContentTitleTextStyle = GoogleFonts.poppins(
    color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18);
TextStyle ButtonTextStyle = GoogleFonts.poppins(
    color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18);
TextStyle PriceTextStyle = GoogleFonts.poppins(
    color: primaryColor, fontWeight: FontWeight.w500, fontSize: 16);

//Margin set
EdgeInsetsGeometry primaryMargin = const EdgeInsets.only(left: 24, top: 24);
EdgeInsetsGeometry specificMargin =
    const EdgeInsets.symmetric(horizontal: 24, vertical: 30);

//Padding set
/// Padding hone page
EdgeInsetsGeometry homePadding = const EdgeInsets.only(bottom: 30);
EdgeInsetsGeometry popularPadding = const EdgeInsets.only(right: 20);
EdgeInsetsGeometry recomendedPadding = const EdgeInsets.only(bottom: 30);
EdgeInsetsGeometry tipsPadding = const EdgeInsets.only(bottom: 20);
double subTitlePadding = 16.0;

/// padding specific page
EdgeInsetsGeometry specificPadding = const EdgeInsets.symmetric(vertical: 30);
EdgeInsetsGeometry specificContentPadding =
    const EdgeInsets.symmetric(horizontal: 18);

//Radius set
BorderRadiusGeometry primaryRadius = BorderRadius.circular(20);
BorderRadiusGeometry buttonRadius = BorderRadius.circular(17);
