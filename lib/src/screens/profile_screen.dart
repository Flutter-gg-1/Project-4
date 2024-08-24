import 'dart:io';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopping_app/src/widgets/user_card.dart';

//contain user data, image  and logout
class ProfileScreen extends StatefulWidget {
  final Map<String, String> userData;
  const ProfileScreen({super.key, required this.userData});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.beige,

      //appBar
      appBar: AppBar(
          backgroundColor: ColorsConstant.beige,
          automaticallyImplyLeading: false,
          title: Text(
            "Profile",
            style: GoogleFonts.abhayaLibre(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: ColorsConstant.darkPurple),
          ),
          actions: [
            Icon(
              FluentIcons.settings_16_filled,
              size: 34,
              color: ColorsConstant.purple,
            ),
            const SizedBox(
              width: 30,
            ),
          ]),

      //body
      body: Center(
          child: Column(children: [
        Container(
            height: 570,
            width: 400,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: ColorsConstant.purple,
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  )
                ],
                borderRadius: BorderRadius.circular(50),
                color: ColorsConstant.violate,
                border: Border.all(width: 1, color: ColorsConstant.darkPurple)),
            child: Column(
              children: [
                //image
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsConstant.beige,
                    image: selectedImage != null
                        ? DecorationImage(
                            image: FileImage(selectedImage!),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                  child: selectedImage == null
                      ? Icon(
                          FluentIcons.person_24_filled,
                          size: 70,
                          color: ColorsConstant.darkPurple,
                        )
                      : null,
                ),
                const SizedBox(
                  height: 20,
                ),

                //image select botton
                ElevatedButton(
                    onPressed: () async {
                      final image = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);
                      setState(() {
                        selectedImage = File(image?.path ?? "");
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsConstant.purple,
                        shadowColor: ColorsConstant.darkPurple,
                        elevation: 4,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 2)),
                    child: Text(
                      "Select image",
                      style: GoogleFonts.abhayaLibre(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorsConstant.darkPurple),
                    )),
                const SizedBox(
                  height: 10,
                ),

                //user data
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Text(
                    "User Info",
                    style: GoogleFonts.abhayaLibre(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: ColorsConstant.darkPurple),
                  ),
                ),
                userCard(
                    icon: FluentIcons.person_12_filled,
                    text: widget.userData["name"] ?? "No name provided"),
                userCard(
                    icon: FluentIcons.phone_24_filled,
                    text:
                        widget.userData["phone"] ?? "No phone number provided"),
                userCard(
                    icon: Icons.email,
                    text: widget.userData["email"] ?? "No email provided"),
              ],
            )),
        const SizedBox(
          height: 30,
        ),

        //logout botton
        ElevatedButton(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsConstant.darkPurple,
            shadowColor: ColorsConstant.darkPurple,
            elevation: 4,
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 12,
            ),
          ),
          child: Text(
            "Logout",
            style: GoogleFonts.abhayaLibre(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: ColorsConstant.beige,
            ),
          ),
        ),
      ])),
    );
  }
}
