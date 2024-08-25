import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  final ImagePicker picker = ImagePicker(); // Image picker instance
  XFile? _image; // Variable to hold the selected image file
  final TextEditingController _nameController = TextEditingController(); // Controller for the name TextField
  String _confirmedName = ''; // Variable to store the confirmed name

  // Function to pick an image from the gallery
  Future<void> _pickImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image; // Update the state with the selected image
    });
  }

  // Function to confirm the name entered by the user
  void _confirmName() {
    setState(() {
      _confirmedName = _nameController.text; // Update the confirmed name with the TextField value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container for the profile image and name display
            Container(
              padding: const EdgeInsets.only(top: 40, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // GestureDetector to pick an image when tapped
                  GestureDetector(
                    onTap: _pickImage,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: _image != null
                          ? FileImage(File(_image!.path))
                          : AssetImage(
                                  'assets/default_profile.png') // Default image if none is selected
                              as ImageProvider,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Display the confirmed name or a placeholder if none is entered
                  Text(
                    _confirmedName.isNotEmpty ? _confirmedName : 'Name',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            // Container for the name input and confirmation button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 1), // Position of the shadow
                        ),
                      ],
                    ),
                    // TextField for entering the name
                    child: TextField(
                      controller: _nameController,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Enter your name',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(179, 85, 80, 80),
                          fontWeight: FontWeight.normal,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Button to confirm the name
                  ElevatedButton(
                    onPressed: _confirmName,
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
