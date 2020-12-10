import 'package:fakebook/common/themes/theme_colors.dart';
import 'package:fakebook/common/themes/theme_dimens.dart';
import 'package:fakebook/common/themes/themes.dart';
import 'package:fakebook/common/widgets/circle_button_icon.dart';
import 'package:fakebook/common/widgets/widgets.dart';
import 'package:fakebook/models/models.dart';
import 'package:fakebook/screens/navigator/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomAppBar extends StatelessWidget {
  final User currentUser;
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomAppBar({
    Key key,
    @required this.currentUser,
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: kToolbarHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "fakebook",
              style: TextStyle(
                color: ThemeColors.fakebookColor,
                fontWeight: FontWeight.bold,
                fontSize: ThemeText.webTitleSize,
                letterSpacing: -1.2,
              ),
            ),
          ),
          Container(
            width: ThemeDimens.heightMainContainer,
            height: double.infinity,
            child: CustomTabBar(
              icons: icons,
              selectedIndex: selectedIndex,
              onTap: onTap,
              isBottomIndicator: true,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                UserCard(user: currentUser),
                const SizedBox(width: 12.0),
                CircleButtonIcon(
                  icon: Icons.search,
                  iconSize: 30.0,
                  onPressed: () {},
                ),
                CircleButtonIcon(
                  icon: MdiIcons.facebookMessenger,
                  iconSize: 30.0,
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
