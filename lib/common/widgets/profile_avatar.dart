import 'package:cached_network_image/cached_network_image.dart';
import 'package:fakebook/common/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final bool hasBorder;

  const ProfileAvatar({
    Key key,
    @required this.imageUrl,
    this.isActive = false,
    this.hasBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: hasBorder ? ThemeColors.fakebookColor : Colors.black,
          child: CircleAvatar(
            radius: 17.0,
            backgroundColor: Colors.grey[200],
            backgroundImage: CachedNetworkImageProvider(imageUrl),
          ),
        ),
        isActive ? Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            decoration: BoxDecoration(
              color: ThemeColors.onlineColor,
              shape: BoxShape.circle,
              border: Border.all(
                width: 2.0,
                color: Colors.white
              )
            ),
            width: 15.0,
            height: 15.0,
          ),
        ) : const SizedBox.shrink(),
      ],
    );
  }
}
