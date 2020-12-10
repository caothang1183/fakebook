import 'package:fakebook/common/themes/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  const CustomTabBar({
    Key key,
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
    this.isBottomIndicator = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: icons.asMap().map((index, icon) => MapEntry(
              index,
              Tab(icon: Icon(
                icon,
                  color: index == selectedIndex
                      ? ThemeColors.fakebookColor
                      : Colors.black45,
                size: 30.0,
                ),
              ),
            ),
          ).values.toList(),
      indicatorPadding: EdgeInsets.zero,
      indicator:BoxDecoration(
        border: isBottomIndicator ? Border(
          bottom: BorderSide(
            width: 3.0,
            color: ThemeColors.fakebookColor,
          ),
        ) : Border(
          top: BorderSide(
            width: 3.0,
            color: ThemeColors.fakebookColor,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
