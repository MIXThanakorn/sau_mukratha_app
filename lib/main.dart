import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sau_mukratha_app/views/splash_screen_ui.dart';

void main() {
  runApp(const SAUMukrathaApp());
}

class SAUMukrathaApp extends StatefulWidget {
  const SAUMukrathaApp({super.key});

  @override
  State<SAUMukrathaApp> createState() => _SAUMukrathaAppState();
}

class _SAUMukrathaAppState extends State<SAUMukrathaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
