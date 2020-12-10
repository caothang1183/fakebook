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

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      LayoutWidgetBuilder: (context, constraints) {
        if (constraints.maxWitdh >= 1200) {
          return desktop;
        }
        if (constraints.maxWitdh >= 800) {
          return tablet;
        }
        return mobile;
      },
    );
  }
}
