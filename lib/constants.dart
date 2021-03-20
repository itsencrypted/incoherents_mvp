import 'package:flutter/material.dart';
import 'package:incoherents_mvp/screens/aboutus_screen.dart';
import 'package:incoherents_mvp/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';


var menuItems = [{
'title' : 'Home',
'route' : HomeScreen.id,
},
{
'title' : 'About Us',
'route' : AboutusScreen.id,
},
{
'title' : 'Drops',
'route' : '/drops',
}
];

const kDharma1 = Color(0xFF2536FF);
const kDharma2 = Color(0xFFA323FE);
const kDharma3 = Color(0xFFFF1FCF);
const kDharma4 = Color(0xFFFE763E);
const kDharma5 = Color(0xFFFFA514);

const kBeige = Color(0xFFc5b39b);

const kLightBlueish = Color(0xFF33BBB5);
const kLightGreen = Color(0xFF95E08E);

const kCheck = Color(0xFF8D8E98);

const KActiveCardColor = Color(0xFF1D1E33);
const KInactiveCardColor = Color(0xFF111328);
const KCherry = Color(0xFFEB1555);

const kLabelTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

TextStyle kHeadlineFont = GoogleFonts.pangolin(
  textStyle: TextStyle(
    fontSize: 35.0,
    fontWeight: FontWeight.w600,
    color: Colors.white),
);

TextStyle kIncoherents10 = GoogleFonts.pangolin(
  textStyle: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colors.white),
);

TextStyle kIncoherents20 = GoogleFonts.pangolin(
  textStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: Colors.white),
);

TextStyle kIncoherents20green = GoogleFonts.pangolin(
  textStyle: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      color: kLightGreen),
);

TextStyle kIncoherents40 = GoogleFonts.pangolin(
  textStyle: TextStyle(
      fontSize: 40.0,
      fontWeight: FontWeight.w400,
      color: Colors.white),
);

TextStyle kIncoherents80 = GoogleFonts.shadowsIntoLight(
  textStyle: TextStyle(
      fontSize: 80.0,
      fontWeight: FontWeight.w800,
    color: kLightGreen,
      ),
);

