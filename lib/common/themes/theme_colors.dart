import 'package:flutter/material.dart';

class ThemeColors {
  static const Color scaffold = Color(0xFFF0F2F5);
  static const Color fakebookColor = Color(0xFF1777F2);
  static const Color onlineColor = Color(0xFF4BCB1F);

  static const LinearGradient createRoomColor = LinearGradient(
    colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
  );

  static const LinearGradient storyColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );
}
