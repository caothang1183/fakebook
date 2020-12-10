import 'package:fakebook/common/widgets/profile_avatar.dart';
import 'package:fakebook/models/models.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;
  final bool isActive;

  const UserCard({
    Key key,
    @required this.user,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(
            imageUrl: user.imageUrl,
            isActive: isActive,
          ),
          const SizedBox(width: 6.0),
          Flexible(
            child: Text(
              user.username,
              style: TextStyle(
                color: Colors.grey[600],
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
