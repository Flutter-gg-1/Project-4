import 'data/user_data.dart';

resetPassword(User user, String newPassword) {
  User newUser = User.fromJson({
    'username': user.username!,
    'password': newPassword,
    'email': user.email!
  });

  for (var object in users) {
    if (object.username == user.username) {
      object = newUser;
    }
  }
}
