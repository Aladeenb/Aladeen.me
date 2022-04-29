import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aladeen",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,

        // Define the default font family.
        textTheme: GoogleFonts.lexendTextTheme(
          Theme.of(context)
              .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
        ),

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
      ),
    );
  }
}
