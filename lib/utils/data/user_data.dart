List<User> users = [
  User.fromJson(
      {'username': 'aziz', 'password': 'aziz', 'email': 'aziz@gmail.com'}),
  User.fromJson(
      {'username': 'ahmed', 'password': 'ahmed', 'email': 'ahmed@gmail.com'}),
];

User? currentUser = User.fromJson(
    {'username': 'aziz', 'password': 'aziz', 'email': 'aziz@gmail.com'});

class User {
  final String? username;
  final String? password;
  final String? email;

  User({required this.username, required this.password, required this.email});

  factory User.fromJson(Map<String, String> json) {
    return User(
        username: json['username'],
        password: json['password'],
        email: json['email']);
  }
}
