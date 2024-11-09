import 'package:flutter/material.dart';

class AppFonts {
  // Font Families
  static const String primaryFont = 'Roboto'; // Commonly used for clean, readable text
  static const String secondaryFont = 'OpenSans'; // Secondary font for variety in headings

  // Font Sizes
  static const double headline1 = 32.0; // Main page headings
  static const double headline2 = 24.0; // Section titles or prominent headings
  static const double headline3 = 20.0; // Subsection headings or minor titles
  static const double bodyText1 = 16.0; // Primary body text for readability
  static const double bodyText2 = 14.0; // Secondary body text, comments, or descriptions
  static const double caption = 12.0; // Small captions, labels, or helper text
  static const double buttonText = 18.0; // Button text for better visibility

  // Font Weights
  static const FontWeight thin = FontWeight.w100;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;

  // TextStyle Examples for Common Components
  static const TextStyle headline1Style = TextStyle(
    fontFamily: primaryFont,
    fontSize: headline1,
    fontWeight: bold,
    color: Colors.black,
  );

  static const TextStyle headline2Style = TextStyle(
    fontFamily: primaryFont,
    fontSize: headline2,
    fontWeight: semiBold,
    color: Colors.black87,
  );

  static const TextStyle bodyText1Style = TextStyle(
    fontFamily: primaryFont,
    fontSize: bodyText1,
    fontWeight: regular,
    color: Colors.black,
  );

  static const TextStyle bodyText2Style = TextStyle(
    fontFamily: primaryFont,
    fontSize: bodyText2,
    fontWeight: light,
    color: Colors.black54,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontFamily: secondaryFont,
    fontSize: buttonText,
    fontWeight: medium,
    color: Colors.white,
  );

  static const TextStyle captionStyle = TextStyle(
    fontFamily: primaryFont,
    fontSize: caption,
    fontWeight: regular,
    color: Colors.black45,
  );
}
