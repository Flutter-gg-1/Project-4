import 'dart:io';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/colors.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsConstant.violate,
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
            ElevatedButton(
                onPressed: () async {
                  final image = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  setState(() {
                    selectedImage = File(image?.path ?? "");
                  });
                },
                child: const Text("Select image")),

            
          ],
        ),
      ),
    );
  }
}
