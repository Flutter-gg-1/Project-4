import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shop_app/setting_style.dart';

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
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 231, 231),
        centerTitle: true,
        title: const Text("Account",
            style: TextStyle(
              color: Color(0xff5d665b),
              fontSize: 20,
              fontFamily: "DMSherifText",
            )),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          selectedImage == null
              ? const Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Color.fromARGB(255, 187, 182, 182),
                )
              : CircleAvatar(
                  radius: 50,
                  backgroundImage: FileImage(File(selectedImage!.path))),
          TextButton(
              onPressed: () async {
                final image =
                    await ImagePicker().pickImage(source: ImageSource.gallery);
                setState(() {
                  selectedImage = File(image!.path);
                });
              },
              child: const Text(
                "Add image",
                style: TextStyle(color: Color.fromARGB(255, 94, 153, 82)),
              )),
          const SizedBox(height: 50),
          const SettingStyle(title: "Change password"),
          const SizedBox(height: 20),
          const SettingStyle(title: "Support"),
          const SizedBox(height: 20),
          const SettingStyle(title: "Language"),
          const SizedBox(height: 20),
          const SettingStyle(title: "Number"),
        ],
      ),
    );
  }
}
