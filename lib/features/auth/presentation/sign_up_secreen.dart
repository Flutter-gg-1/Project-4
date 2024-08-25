import 'package:flutter/material.dart';
import 'package:project_04/core/constants/colors.dart';
import 'package:project_04/core/constants/images.dart';
import 'package:project_04/core/constants/strings.dart';
import 'package:project_04/core/utils/validators.dart';
import 'package:project_04/core/widghts/common_widghts/CustomTextFormField.dart';
import 'package:project_04/core/widghts/common_widghts/TextInputField.dart';
import 'package:project_04/core/widghts/sign_up/CustomButtonSignUp.dart';
import 'package:project_04/core/widghts/sign_up/haveAccountSection.dart';
import 'package:project_04/core/widghts/sign_up/header.dart';
import 'package:project_04/features/auth/data/user_repository.dart';


class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

final UserRepository userRepository = UserRepository.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SignUpHeader(),
                const SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextInputField(text: AppStrings.firstName),
                    CustomTextFormField(
                      controller: emailController,
                      hint: AppStrings.firstNameHint,
                      prefixIcon: Icons.person,
                    ),
                    const SizedBox(height: 20),
                    const TextInputField(text: AppStrings.lastName),
                    CustomTextFormField(controller: firstNameController, hint: AppStrings.lastNameHint, prefixIcon: Icons.person),
                    const SizedBox(height: 20),
                    const TextInputField(text: AppStrings.phoneNumber),
                    CustomTextFormField(controller: phoneController, hint: AppStrings.phoneNumberHint, prefixIcon: Icons.phone),
                    const SizedBox(height: 20),
                    const TextInputField(text: AppStrings.email),
                    CustomTextFormField(controller: emailController, hint: AppStrings.emailHint, prefixIcon: Icons.email),
                    const SizedBox(height: 20),
                    const TextInputField(text: AppStrings.password),  
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText:  AppStrings.passwordHint,
                        hintStyle: const TextStyle(
                          color: AppColors.accentColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                        prefixIcon: const Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      obscureText: true,
                      validator: validatePassword,
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppStrings.confirmPassword,
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ),
                    TextFormField(
                      controller: confirmPasswordController,
                      decoration: InputDecoration(
                        hintText: AppStrings.confirmPasswordHint,
                        hintStyle: const TextStyle(
                          color: AppColors.accentColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                        prefixIcon: const Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppStrings.confirmYourPassword;
                        }
                        if (value != passwordController.text) {
                          return AppStrings.confirmPasswordError;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButtonSignUp(emailController: emailController, passwordController: passwordController, userRepository: userRepository),
                    const SizedBox(height: 20),
                    const HaveAccountSection(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



