import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:pro4/global.dart';
import 'package:pro4/models/user_model.dart';
import 'package:pro4/page/home_page.dart';
import 'package:pro4/widget/button_widget.dart';
import 'package:pro4/widget/texfiled_widget.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({super.key});

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {


  String name = "";

  String password = "";
  String email = "";

  
  
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      FontAwesome.store_solid,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "MyStore",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold, fontSize: 24),
                    )
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),

               
                TexfiledWidget(
                  onChangeFun: (p0) {
                    name = p0;
                  },
                  validatorFun: (p0) {
                    if (p0 == null || p0.isEmpty) {
                      return "give tex";
                    } else {
                      return null;
                    }
                  },
                  valG: nameG,
                  texHint: "name",
                ),
                const SizedBox(
                  height: 25,
                ),
                TexfiledWidget(
                  onChangeFun: (p0) {
                    email = p0;
                  },
                  validatorFun: (p0) {
                    if (p0 == null || p0.isEmpty) {
                      return "give tex";
                    } else {
                      return null;
                    }
                  },
                  valG: passwordG,
                  texHint: "email",
                ),
                const SizedBox(
                  height: 50,
                ),
                TexfiledWidget(
                  onChangeFun: (p0) {
                    password = p0;
                  },
                  validatorFun: (p0) {
                    if (p0 == null || p0.isEmpty) {
                      return "give tex";
                    } else {
                      return null;
                    }
                  },
                  valG: passwordG,
                  texHint: "password",
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "you have account ?    ",
                      style: GoogleFonts.lato(),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) {
                              return const SingupPage();
                            },
                          ));
                        },
                        child: GestureDetector(
                          onTap: () {


                              Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) {
                          return const HomePage();
                        },
                      ));
                            
                          },
                          child: Text(
                            "click here ",
                            style: GoogleFonts.lato(color: Colors.blue),
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ButtonWidget(
                  tex: "Singup",
                  fun: () {
                    if (globalKey.currentState!.validate()) {

                      userList.add(UserModel(name: name, password: password, email: email));
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) {
                          return const HomePage();
                        },
                      ));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
