import 'package:flutter/material.dart';

class CircleButtonIcon extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function onPressed;

  const CircleButtonIcon({
    Key key,
    @required this.icon,
    @required this.iconSize,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        height: 50.0,
        width: 50.0,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(icon),
            iconSize: iconSize,
            color: Colors.black,
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
