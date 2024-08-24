// class to represent shopex users
class User {
  final String name;
  final String email;
  final String password;
  final String? latitude;
  final String? longitude;
  final String pic;
  
  User({required this.name, required this.email, required this.password, this.latitude, this.longitude, required this.pic});
  
  factory User.fromJson(Map<String,dynamic> json) {
    return User(name: json['name'], email: json['email'], password: json['password'], latitude: json['latitude'], longitude: json['longitude'], pic: json['pic']);
  }

  Map<String,dynamic> toJson() {
    Map<String,dynamic> map = {};
    map['name'] = name;
    map['email'] = email;
    map['password'] = password;
    map['pic'] = pic;
    if(latitude!=null && longitude != null) {
      map['latitude'] = latitude;
      map['longitude'] = longitude;
    }
    return map;
  }
}