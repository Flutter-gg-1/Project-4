import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project4/nav_bar.dart';

class Login extends StatefulWidget {



  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
           padding: const EdgeInsets.fromLTRB(20, 100, 20, 40),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child:  SvgPicture.asset('assets/svg/logo.svg')),
              const SizedBox(height: 60),
              const Text("Log in", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: "Gilroy"),),
              const SizedBox(height: 15),
              const Text("Enter your username and password", style: TextStyle(fontSize: 16, fontFamily: "Gilroy", color: Color.fromARGB(255, 124, 124, 124)),),
              const SizedBox(height: 30),
              const LoginForm()
              
            ],
           ),
        )
      );
  }
}


class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}
class LoginFormState extends State<LoginForm> {

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
 
    return Form(
      key: formKey,
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Text('Username', style: TextStyle(fontSize: 16, fontFamily: "Gilroy", color: Color.fromARGB(255, 124, 124, 124)),),
         TextFormField(
          validator: (value){
            if(value == null || value.isEmpty){
              return 'Please enter a username';
            }
            return null;
          }
        ),
        const SizedBox(height: 20,),
        const Text('Password', style: TextStyle(fontSize: 16, fontFamily: "Gilroy", color: Color.fromARGB(255, 124, 124, 124)),),
         TextFormField(
          validator: (value){
            if(value == null || value.isEmpty){
              return 'Please enter a password';
            }
            return null;
          }
        ),
        const SizedBox(height: 20,),
        const Align(
          alignment: Alignment.topRight,
          child: Text('Forgot Password?', style: TextStyle(fontSize: 14, fontFamily: "Gilroy", color: Color.fromARGB(255, 0, 0, 0)),)
          ),
          const SizedBox(height: 20,),
          MaterialButton(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            minWidth: double.infinity,
            height: 65,
            color: const Color.fromARGB(255, 242, 132, 130),
            onPressed: () {
              // Validate returns 
              if (formKey.currentState!.validate()) {
                 Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const NavBar()),
                  );
              }
            },
            child: const Text('Log In', style: TextStyle(fontSize: 18, fontFamily: "Gilroy", color: Color.fromARGB(255, 255, 255, 255))),
          ),
          const SizedBox(height: 20,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don’t have an account?', style: TextStyle(fontSize: 14, fontFamily: "Gilroy", color: Color.fromARGB(255, 0, 0, 0)),),
              Text('Signgup', style: TextStyle(fontSize: 14, fontFamily: "Gilroy", color: Color.fromARGB(255, 133, 165, 157)),)
            ],
           ),
        ],
      ),
    );
  }
}