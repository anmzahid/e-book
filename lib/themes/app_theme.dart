import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData customTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    elevation: 0,
    unselectedItemColor: Colors.grey[400], // Lighter grey for unselected items
    selectedItemColor: Colors.blue, // Blue for selected items
  ),
  primaryColor: Colors.blue, // Blue as the primary color
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.blueAccent,
    iconTheme: const IconThemeData(color: Colors.black), // Black icons on app bar
    titleTextStyle: GoogleFonts.lato( // Lato font for app bar title
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    actionsIconTheme: const IconThemeData(size: 30), // Larger size for action icons
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: Colors.blue, // Blue color for progress indicators
    linearTrackColor: Colors.blue[100], // Lighter blue for progress track
  ),
  textTheme: TextTheme(
    // Using Lato font for various text styles
    titleLarge: GoogleFonts.lato(
      fontSize: 22,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.lato(
      fontSize: 18,
      color: Colors.black,
    ),
    titleSmall: GoogleFonts.lato(
      fontSize: 16,
      color: Colors.black54, // Darker grey for secondary text
    ),
    bodyLarge: GoogleFonts.lato(
      fontSize: 16,
      color: Colors.black87, // Slightly lighter black for body text
    ),
    bodyMedium: GoogleFonts.lato(
      fontSize: 14,
      color: Colors.black54,
    ),
    labelLarge: GoogleFonts.lato( // Lato font for buttons
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
  iconTheme: const IconThemeData(color: Colors.blue), // Blue icons
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue, // Blue buttons
    textTheme: ButtonTextTheme.primary, // Primary text theme for buttons
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0), // Rounded corners for buttons
    ),
  ),
);
