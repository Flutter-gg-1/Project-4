import '../../models/user.dart';

List<User> users = [
  User.fromJson(
      {'username': 'aziz', 'password': 'aziz', 'email': 'aziz@gmail.com'}),
  User.fromJson(
      {'username': 'ahmed', 'password': 'ahmed', 'email': 'ahmed@gmail.com'}),
];

User? currentUser = User.fromJson(
    {'username': 'aziz', 'password': 'aziz', 'email': 'aziz@gmail.com'});