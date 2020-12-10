import 'package:fakebook/common/themes/theme_colors.dart';
import 'package:fakebook/common/widgets/widgets.dart';
import 'package:fakebook/models/models.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MoreOption extends StatelessWidget {
  final User currentUser;

  const MoreOption({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Option> _moreOptionList = [
      Option(
        icon: MdiIcons.shieldAccount,
        color: Colors.deepPurple,
        label: "COVID-19 Info Center",
      ),
      Option(
        icon: MdiIcons.accountMultiple,
        color: Colors.cyan,
        label: "Friends",
      ),
      Option(
          icon: MdiIcons.facebookMessenger,
          color: ThemeColors.fakebookColor,
          label: "Messenger"),
      Option(
        icon: MdiIcons.flag,
        color: Colors.orange,
        label: "Page",
      ),
      Option(
          icon: MdiIcons.storefront,
          color: ThemeColors.fakebookColor,
          label: "Marketplace"),
      Option(
          icon: Icons.ondemand_video,
          color: ThemeColors.fakebookColor,
          label: "Watch"),
      Option(
        icon: MdiIcons.calendarStar,
        color: Colors.red,
        label: "Event",
      ),
    ];

    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: ListView.builder(
        itemCount: _moreOptionList.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: UserCard(user: currentUser),
            );
          }
          final Option option = _moreOptionList[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: _Option(option: option),
          );
        },
      ),
    );
  }
}

class _Option extends StatelessWidget {
  final Option option;

  const _Option({
    Key key,
    @required this.option,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Icon(option.icon, color: option.color),
          const SizedBox(width: 6.0),
          Flexible(
            child: Text(
              option.label,
              style: TextStyle(
                fontSize: 16.0,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
