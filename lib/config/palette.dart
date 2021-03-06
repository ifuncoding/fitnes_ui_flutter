import 'package:flutter/material.dart';

class Palette {
  static const Color scaffold = Color(0xFFeff7f9);

  static const Color primary = Color(0xFF089bab);
  static const Color second = Color(0xFFc1e5e9);
  static const Color bg_btn = Color(0xFFEBEFF0);
  static const Color text = Color(0xFF4D4B54);
  static const Color bg_form = Color(0xFFeef7f9);

  static const LinearGradient createRoomGradient = LinearGradient(
    colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
  );

  static const Color online = Color(0xFF4BCB1F);

  static const LinearGradient storyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );
}
