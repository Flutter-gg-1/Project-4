import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController userEmail = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmPass = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(30)),
          const Center(child: Text("Create account", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
          const Padding(padding: EdgeInsets.only(top: 20)),
          SizedBox(
            width: 250,
            //height: 40,
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
            //height: 40,
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
                          return null;
                        },
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          SizedBox(
            width: 250,
            //height: 40,
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
            //height: 40,
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
    );
  }
}