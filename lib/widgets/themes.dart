import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
          primarySwatch:
              Colors.deepPurple, //Adjusts all colors according to Purple(here).
              fontFamily: GoogleFonts.lato().fontFamily, 
              // sare app bar ke liye ye property apply ho jayegi
              appBarTheme: AppBarTheme(
                color: Colors.white,
                elevation: 0.0,
                iconTheme: IconThemeData(
                  color: Colors.black
                ),
                titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  //Make title in center of appbar
                  )
              ) ,    
          );

          static ThemeData darkTheme(BuildContext context) => ThemeData(
          brightness: Brightness.dark, //  Brightness.dark overrides theme so colors of primarySwatch wont work in dark mode
          );
}