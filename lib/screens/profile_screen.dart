import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopping_app/widgets/login_textfield.dart';

import '../utils/data/user_data.dart';
import '../utils/reset_password.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? selectedImage;
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmationController = TextEditingController();
  final key = GlobalKey<FormState>();
  bool isReset = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Stack(clipBehavior: Clip.none, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/background-main.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage: selectedImage != null
                              ? FileImage(selectedImage!)
                              : const AssetImage('assets/images/pfp.png'),
                        ),
                      ),
                      Positioned(
                        top: 125,
                        left: 235,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.transparent,
                          child: Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: const Icon(Icons.edit),
                              color: Colors.black,
                              onPressed: () async {
                                final image = await ImagePicker()
                                    .pickImage(source: ImageSource.gallery);
                                if (image != null) {
                                  setState(() {
                                    selectedImage = File(image.path);
                                  });
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username: ${currentUser!.username}',
                        style: const TextStyle(fontSize: 24),
                      ),
                      Text(
                        'Email: ${currentUser!.email}',
                        style: const TextStyle(fontSize: 24),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Password: ********',
                            style: TextStyle(fontSize: 24),
                          ),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  isReset = !isReset;
                                });
                              },
                              child: const Text('Reset Password'))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                  if (isReset)
                    Form(
                      key: key,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            LoginTextfield(
                              hint: 'Password',
                              controller: passwordController,
                            ),
                            LoginTextfield(
                              hint: 'Password Confirmation',
                              controller: confirmationController,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.black,
                                  elevation: 20,
                                  surfaceTintColor: Colors.green,
                                  fixedSize: const Size(150, 50),
                                  backgroundColor:
                                      const Color.fromARGB(255, 236, 202, 169)),
                              onPressed: () {
                                if (key.currentState!.validate()) {
                                  resetPassword(
                                      currentUser!, passwordController.text);
                                }
                              },
                              child: const Text(
                                'Confirm',
                                style:  TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            AlertDialog(
                              content: const Text(
                                  'Password is successfully reset!!'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Back'))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
        ]));
  }
}
