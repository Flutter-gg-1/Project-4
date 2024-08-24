class User {
  final String? username;
  final String? password;
  final String? email;
  List favorites = [];
  List cartItems = [];

  User({
    required this.username,
    required this.password,
    required this.email,
  });

  factory User.fromJson(Map<String, String> json) {
    return User(
        username: json['username'],
        password: json['password'],
        email: json['email']);
  }
}
