import 'package:espresso_yourself/model/user.dart';

import 'extensions/image_ext.dart';

class MockData {
  var user = User(name: 'John Doe', avatar: Img.beans2);

  static final MockData _shared = MockData._internal();

  MockData._internal();

  factory MockData() {
    return _shared;
  }
}
