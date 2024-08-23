import 'package:flutter/material.dart';

import '../extensions/image_ext.dart';

class User {
  String name;
  AssetImage avatar;

  User({required this.name, required this.avatar});

  static User user1 = User(name: 'John Doe', avatar: Img.espresso);
}
