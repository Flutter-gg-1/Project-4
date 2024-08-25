import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_04/core/constants/colors.dart';
import 'package:project_04/core/utils/validators.dart';
import 'package:project_04/core/widghts/common_widghts/CustomTextFormField.dart';
import 'package:project_04/core/widghts/common_widghts/TextInputField.dart';
import 'package:project_04/core/widghts/login/CustomButtonLogin.dart';
import 'package:project_04/features/auth/data/user_repository.dart'; 

class ProfileScreen extends StatefulWidget {
  final String? name;
  final String? email;

  const ProfileScreen({super.key, this.name, this.email});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _profileImage;
  final ImagePicker _picker = ImagePicker();
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  final UserRepository userRepository = UserRepository.instance;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name ?? '');
    _emailController = TextEditingController(text: widget.email ?? '');
  }

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  void _saveProfile() {
    final name = _nameController.text;
    final email = _emailController.text;

    final nameError = name.isEmpty ? 'Name cannot be empty' : null;
    final emailError = validateEmail(email);

    if (nameError == null && emailError == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Profile updated successfully!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(nameError ?? emailError!)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: _profileImage != null
                      ? FileImage(_profileImage!)
                      : null,
                  backgroundColor: AppColors.accentColor,
                  child: _profileImage == null
                      ? const Icon(Icons.person, size: 60, color: Colors.white)
                      : null,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                    icon: const Icon(FontAwesomeIcons.edit, color: AppColors.primaryColor),
                    onPressed: _pickImage,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextInputField(text: 'Name'),
            CustomTextFormField(
              controller: _nameController,
              hint: 'Enter your name',
              prefixIcon: Icons.person,
            ),
            const SizedBox(height: 20),
            TextInputField(text: 'Email'),
            CustomTextFormField(
              controller: _emailController,
              hint: 'Enter your email',
              prefixIcon: Icons.email,
            ),
            const SizedBox(height: 40),
            CustomButton(
              emailController: _emailController, 
              passwordController: _nameController, 
              userRepository: userRepository,
              success: 'Profile updated successfully!',
              failed: 'Failed to update profile',
              operation: 'Save',
            ),
          ],
        ),
      ),
    );
  }
}
