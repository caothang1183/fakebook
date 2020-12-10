import 'package:fakebook/common/themes/theme_colors.dart';
import 'package:fakebook/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakebook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: ThemeColors.scaffold
      ),
      home: NavigatorScreen(),
    );
  }
}
