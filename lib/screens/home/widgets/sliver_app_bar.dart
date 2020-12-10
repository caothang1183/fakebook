import 'package:fakebook/common/themes/themes.dart';
import 'package:fakebook/common/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      floating: true,
      title: Text(
        "fakebook",
        style: TextStyle(
          color: ThemeColors.fakebookColor,
          fontWeight: FontWeight.bold,
          fontSize: ThemeText.tittleSize,
          letterSpacing: -1.2,
        ),
      ),
      actions: [
        CircleButtonIcon(
          onPressed: () {},
          icon: Icons.search,
          iconSize: 28.0,
        ),
        CircleButtonIcon(
          onPressed: () {},
          icon: MdiIcons.facebookMessenger,
          iconSize: 28.0,
        ),
      ],
    );
  }
}
