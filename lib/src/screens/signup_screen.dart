import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/colors.dart';
import 'package:shopping_app/src/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

//signup screen
class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

  Map<String, String> data = {};
  bool passwordVisible = false;

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
                  height: 500,
                  width: 390,
                  padding: const EdgeInsets.all(30),
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

                        //name TextFormField
                        TextFormField(
                          controller: nameController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              prefixIcon: Icon( FluentIcons.person_12_filled,
                                  color: ColorsConstant.purple),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              label: Text(
                                "Enter your name",
                                style: GoogleFonts.abhayaLibre(
                                  fontSize: 20,
                                ),
                              ),
                              hintText: "name",
                              hintStyle: GoogleFonts.abhayaLibre()),
                          validator: (value) =>
                              value!.isEmpty ? "Please enter your name" : null,
                        ),

                        //phone number TextFormField
                        TextFormField(
                          controller: phoneController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              prefixIcon: Icon(FluentIcons.phone_24_filled,
                                  color: ColorsConstant.purple),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              label: Text(
                                "Enter your phone number",
                                style: GoogleFonts.abhayaLibre(
                                  fontSize: 20,
                                ),
                              ),
                              hintText: "phone number",
                              hintStyle: GoogleFonts.abhayaLibre()),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          validator: (value) =>
                              value!.length != 10
                                  ? "Please enter a valid phone number"
                                  : null,
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
                              
                          validator: (value) =>
                              !value!.contains("@") || value.length < 5
                                  ? "Please enter a valid Email"
                                  : null,
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

                        //Repassword TextFormField
                        TextFormField(
                            controller: rePasswordController,
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
                                  "Reenter password",
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
                              if (passController.text !=
                                  rePasswordController.text) {
                                return "Please enter a matching password";
                              }
                              return null;
                            }),
                      ])),
            ),

            const SizedBox(
              height: 50,
            ),

            //Signup Button
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    data["name"] = nameController.text;
                    data["phone"] = phoneController.text;
                    data["email"] = emailController.text;
                    data["password"] = passController.text;
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginScreen(data: data),
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Invalid Data",
                          style: TextStyle(color: Colors.red),
                        ),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsConstant.purple,
                    shadowColor: ColorsConstant.darkPurple,
                    elevation: 6,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 9)),
                child: Text(
                  "Create",
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
