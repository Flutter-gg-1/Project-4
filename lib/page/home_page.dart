import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:pro4/global.dart';
import 'package:pro4/models/user_model.dart';
import 'package:pro4/page/singup_page.dart';
import 'package:pro4/page/store_page.dart';
import 'package:pro4/widget/button_widget.dart';
import 'package:pro4/widget/texfiled_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool notFound = false;
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

                 notFound == true  ? Text("not Found" , style: GoogleFonts.lato(color: Colors.red),) : const SizedBox(),
                TexfiledWidget(
                  onChangeFun: (p0) {
                    nameG = p0;
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
                    passwordG = p0;
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
                      "not Sigin up?    ",
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
                        child: Text(
                          "click here ",
                          style: GoogleFonts.lato(color: Colors.blue),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ButtonWidget(
                  tex: "Login",
                  fun: () {
                    log(nameG);
                    log(passwordG);

                    if (globalKey.currentState!.validate()) {


                      if(UserModel.userFound(name: nameG , password: passwordG)){

                      
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) {
                          return const StorePage();
                        },
                      ));
                      }
                      else{
                        setState(() {
                          notFound = true;
                        });
                      }
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
