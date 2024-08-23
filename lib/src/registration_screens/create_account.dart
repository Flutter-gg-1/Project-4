import 'package:flutter/material.dart';

import '../bottom_navigation_bar.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController username = TextEditingController();
    TextEditingController userEmail = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmPass = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            const Center(child: Text("Create account", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
            const Padding(padding: EdgeInsets.only(top: 20)),
            SizedBox(
              width: 250,
              child: TextFormField(
                controller: username,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.person),
                  hintText: "Enter your name",
                  labelText: "Name",
                ),
                validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your name";
                            }
                            return null;
                          },
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            SizedBox(
              width: 250,
              child: TextFormField(
                controller: userEmail,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.email_outlined),
                  hintText: "Enter your email",
                  labelText: "Email",
                ),
                validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your email";
                            }
                            if(!value.contains("@")){
                              return "Please enter a valid email";
                            }
                            return null;
                          },
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            SizedBox(
              width: 250,
              child: TextFormField(
                controller: password,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.lock_rounded),
                  hintText: "Password",
                  labelText: "Password",
                ),
                obscureText: true,
                validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter password";
                            }
                            return null;
                          },
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            SizedBox(
              width: 250,
              child: TextFormField(
                controller: confirmPass,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.lock_rounded),
                  hintText: "Confirm password",
                  labelText: "Password",
                ),
                obscureText: true,
                validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter password again";
                            }
                            if(value != password.text){
                              return "Passwords not match";
                            }
                            return null;
                          },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,),
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState?.validate() ?? false){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                      return const BottomNavigationBarScreen();
                    }));}
                  },
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color(0xffFEFBD8))),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(color: Color(0xff6D2B92), fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}