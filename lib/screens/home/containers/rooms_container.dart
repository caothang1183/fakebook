import 'package:fakebook/common/themes/themes.dart';
import 'package:fakebook/common/widgets/profile_avatar.dart';
import 'package:fakebook/models/models.dart';
import 'package:fakebook/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RoomsContainer extends StatelessWidget {
  final List<User> onlineUsers;

  const RoomsContainer({
    Key key,
    @required this.onlineUsers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 1.0 : 0.0,
      shape: isDesktop ?  RoundedRectangleBorder(borderRadius: BorderRadius.circular(ThemeDimens.radius)) : null,
      child: Container(
        height: 60,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          scrollDirection: Axis.horizontal,
          itemCount: onlineUsers.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return _CreateRoomButton();
            }
            final User user = onlineUsers[index - 1];
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: ProfileAvatar(
                imageUrl: user.imageUrl,
                isActive: true,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: OutlineButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        borderSide: BorderSide(
          width: 3.0,
          color: Colors.blueAccent[100],
        ),
        textColor: ThemeColors.fakebookColor,
        child: Row(
          children: [
            kIsWeb
                ? Icon(
                    Icons.video_call,
                    size: 35.0,
                    color: ThemeColors.fakebookColor,
                  )
                : ShaderMask(
                    shaderCallback: (rect) =>
                        ThemeColors.createRoomColor.createShader(rect),
                    child: Icon(
                      Icons.video_call,
                      size: 35.0,
                      color: Colors.white,
                    ),
                  ),
            const SizedBox(width: 4.0),
            Text("Create\nRoom"),
          ],
        ),
      ),
    );
  }
}
