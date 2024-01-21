import 'package:bijakberuang/screens/home/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainAppView extends StatelessWidget {
  const MainAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bijak Beruang',
      theme: ThemeData(
        textTheme: GoogleFonts.outfitTextTheme().apply(
          bodyColor: Colors.white,
        ),
        colorScheme: ColorScheme.dark(
          background: Colors.grey.shade900,
          onBackground: Colors.white,
          primary: const Color.fromARGB(200, 0, 177, 231),
          secondary: const Color.fromARGB(200, 225, 100, 247),
          tertiary: const Color.fromARGB(200, 255, 140, 108)
        )
      ),
      home: const HomeScreen(),
    );
  }
}