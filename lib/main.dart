import 'package:flutter/material.dart';
import 'package:petit_weather_app/weather/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFF2F3543),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              color: Color(0xFFE2EAF2),
              fontSize: 24.0,
              fontWeight: FontWeight.w600),
          displayMedium: TextStyle(
            color: Color(0xFFE2EAF2),
            fontSize: 18.0,
          ),
          displaySmall: TextStyle(
            color: Color(0xFFE2EAF2),
            fontSize: 14.0,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFFE2EAF2),
          size: 20.0,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}