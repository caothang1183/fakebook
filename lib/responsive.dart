import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  Responsive({
    Key key,
    @required this.mobile,
    this.tablet,
    @required this.desktop,
  }) : super(key: key);

  static double screenWidth(context) => MediaQuery.of(context).size.width;
  static bool isMobile(context) => screenWidth(context) <= 800;
  static bool isTablet(context) => screenWidth(context) > 800 && screenWidth(context) < 1200;
  static bool isDesktop(context) => screenWidth(context) >= 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (isDesktop(context)) {
          return desktop;
        }
        if (isTablet(context)) {
          return tablet ?? mobile;
        }
        return mobile;
      },
    );
  }
}
