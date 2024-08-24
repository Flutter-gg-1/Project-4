import 'package:email_validator/email_validator.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/colors.dart';
import 'package:shopping_app/src/bottom_navigation_bar.dart';

class LoginScreen extends StatefulWidget {
  final Map<String, String> data;
  const LoginScreen({super.key, required this.data});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;

  bool validateEmail(String email) {
    return EmailValidator.validate(email.trim());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.violate,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Lavender",
              style: GoogleFonts.luxuriousScript(
                  fontSize: 65, color: ColorsConstant.darkPurple),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              key: _formKey,
              //signup container
              child: Container(
                  height: 490,
                  width: 390,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: ColorsConstant.darkPurple,
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        )
                      ],
                      borderRadius: BorderRadius.circular(50),
                      color: ColorsConstant.beige,
                      border: Border.all(
                          width: 1, color: ColorsConstant.darkPurple)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sign Up",
                          style: GoogleFonts.abhayaLibre(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: ColorsConstant.darkPurple),
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        //Email TextFormField
                        TextFormField(
                          controller: emailController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email,
                                  color: ColorsConstant.purple),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              label: Text(
                                "Enter your Email",
                                style: GoogleFonts.abhayaLibre(
                                  fontSize: 20,
                                ),
                              ),
                              hintText: "Email",
                              hintStyle: GoogleFonts.abhayaLibre()),
                          validator: (value) {
                            if (value == null || !validateEmail(value)) {
                              return "Please enter a valid Email";
                            }
                            return null;
                          },
                        ),

                        //Password TextFormField
                        TextFormField(
                            controller: passController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: passwordVisible,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: ColorsConstant.darkPurple,
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        passwordVisible = !passwordVisible;
                                      },
                                    );
                                  },
                                ),
                                prefixIcon: Icon(
                                  FluentIcons.password_32_filled,
                                  color: ColorsConstant.purple,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                label: Text(
                                  "Enter your password",
                                  style: GoogleFonts.abhayaLibre(
                                    fontSize: 20,
                                  ),
                                ),
                                hintText: "password",
                                hintStyle: GoogleFonts.abhayaLibre()),
                            validator: (value) {
                              if (value!.length < 8) {
                                return "Please enter a valid password";
                              }
                              return null;
                            }),

                        Padding(
                          padding: const EdgeInsets.only(left: 170),
                          child: Text(
                            "Forgot Password?",
                            style: GoogleFonts.abhayaLibre(
                                color: ColorsConstant.darkPurple,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ])),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (emailController.text == widget.data["email"] &&
                        passController.text == widget.data["password"]) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CustomBottomNavigationBar(
                          userData: widget.data,
                        ),
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Invalid email or password',
                            style: TextStyle(color: Colors.red),
                          ),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsConstant.purple,
                    shadowColor: ColorsConstant.darkPurple,
                    elevation: 6,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 9)),
                child: Text(
                  "Login",
                  style: GoogleFonts.abhayaLibre(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: ColorsConstant.darkPurple),
                )),
          ],
        ),
      ),
    );
  }
}
