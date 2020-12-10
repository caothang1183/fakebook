import 'package:fakebook/common/widgets/profile_avatar.dart';
import 'package:fakebook/models/models.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(width: 10.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: "What\'s on your mind?"),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 0.5,
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.videocam,
                  color: Colors.red,
                ),
                label: Text("Live"),
              ),
              const VerticalDivider(width: 8.0),
              FlatButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.photo,
                  color: Colors.green,
                ),
                label: Text("Photo"),
              ),
              const VerticalDivider(width: 8.0),
              FlatButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.video_call,
                  color: Colors.purpleAccent,
                ),
                label: Text("Room"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
