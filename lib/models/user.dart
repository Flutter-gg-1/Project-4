class User {
  final String name;
  final String email;
  final String password;
  final String? latitude;
  final String? longitude;
  
  User({required this.name, required this.email, required this.password, this.latitude, this.longitude});
  
  factory User.fromJson(Map<String,dynamic> json) {
    return User(name: json['name'], email: json['email'], password: json['password'], latitude: json['latitude'], longitude: json['longitude']);
  }

  Map<String,dynamic> toJson() {
    Map<String,dynamic> map = {};
    map['name'] = name;
    map['email'] = email;
    map['password'] = password;
    if(latitude!=null && longitude != null) {
      map['latitude'] = latitude;
      map['longitude'] = longitude;
    }
    return map;
  }
}