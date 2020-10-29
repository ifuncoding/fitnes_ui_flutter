import 'package:fitness_app/config/palette.dart';
import 'package:fitness_app/screens/home/home_screen.dart';
import 'package:fitness_app/screens/stay_fit.dart/fit_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Palette.scaffold,
        primaryColor: Palette.primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FitnessScreen(),
    );
  }
}
