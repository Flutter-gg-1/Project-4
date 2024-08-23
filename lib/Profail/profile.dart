import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project4/Bottom_Nav/bottom_nav.dart';

class Profile extends StatefulWidget {
  Profile({super.key, required this.name});

  final String name;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            selectedImage != null
                ? CircleAvatar(
                    radius: 50,
                    backgroundImage: FileImage(selectedImage!),
                  )
                : const CircleAvatar(
                    radius: 50,
                    child: Icon(Icons.person),
                  ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  const Color(0xffF05A7E),
                ),
              ),
              onPressed: () async {
                final pickedFile =
                    await ImagePicker().pickImage(source: ImageSource.gallery);
                if (pickedFile != null) {
                  setState(() {
                    selectedImage = File(pickedFile.path);
                  });
                }
              },
              child: const Text(
                "Choose Image",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  const Color(0xffF05A7E),
                ),
              ),
              onPressed: () {
                if (selectedImage != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNav(
                        name: widget.name,
                        imagePath: selectedImage!.path,
                      ),
                    ),
                  );
                }
              },
              child: const Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
