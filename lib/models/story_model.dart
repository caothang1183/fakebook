import 'package:fakebook/models/user_model.dart';
import 'package:flutter/foundation.dart';

class Story {
  final User user;
  final String imageUrl;
  final bool isViewed;

  Story({
    @required this.user,
    @required this.imageUrl,
    this.isViewed = false,
  });
}
