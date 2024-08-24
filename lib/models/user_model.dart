


import 'package:pro4/global.dart';

class UserModel{

  final String name;

  final String password;
  final String email;

  UserModel({required this.name, required this.password , required this.email});




  static bool userFound({required String name , required String password}){


    for(var val in userList){

      if(val.name == name && val.password == password){
        return true;
      }
    }
    return false;

  }


  
}