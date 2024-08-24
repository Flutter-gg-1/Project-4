import 'package:flutter/material.dart';
import 'package:shop_app/current_page.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Image.asset("assets/logo.png", scale: 2),
              Container(
                height: 600,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xff9baa99),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        topRight: Radius.circular(80))),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 100),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            floatingLabelStyle: TextStyle(
                                color: Color(0xff4e574e),
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 158, 161, 158),
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 158, 161, 158),
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                            labelText: "User name",
                            hintText: "Enter your user name",
                            filled: true,
                            fillColor: Color.fromARGB(255, 231, 231, 231),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide.none),
                          ),
                          controller: nameController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (nameController.text.isEmpty) {
                              return "Username must not be empty";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            nameController.clear();
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            floatingLabelStyle: TextStyle(
                                color: Color(0xff4e574e),
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 158, 161, 158),
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 158, 161, 158),
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                            labelText: "Password",
                            hintText: "Enter your Password",
                            filled: true,
                            fillColor: Color.fromARGB(255, 231, 231, 231),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide.none),
                          ),
                          controller: passwordController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (passwordController.text.isEmpty) {
                              return "Password must not be empty";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            passwordController.clear();
                          },
                        ),
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton(
                        style: ButtonStyle(
                            shape:
                                WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                            backgroundColor: WidgetStateProperty.all(
                                const Color.fromARGB(255, 231, 231, 231)),
                            fixedSize: WidgetStateProperty.all(
                                const Size(269.46, 53.1))),
                        onPressed: () {
                          var formData = formKey.currentState;

                          if (formData!.validate()) {
                            formData.save();
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const CurrentPage();
                            }));
                          }
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Color(0xff4e574e)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
