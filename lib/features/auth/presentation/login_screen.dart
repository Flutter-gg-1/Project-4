import 'package:flutter/material.dart';
import 'package:project_04/core/constants/strings.dart';
import 'package:project_04/core/widghts/login/DontHaveAccountSection.dart';
import 'package:project_04/core/widghts/login/login_header.dart';
import 'package:project_04/core/widghts/common_widghts/CustomButton.dart';
import 'package:project_04/core/widghts/common_widghts/CustomTextFormField.dart';
import 'package:project_04/core/widghts/common_widghts/TextInputField.dart';
import 'package:project_04/features/auth/data/user_repository.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final UserRepository userRepository = UserRepository();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Padding(
      padding: const EdgeInsets.only(
        top: 50,
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LoginHeader(),
          const SizedBox(height: 50),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Email Form Field
              const TextInputField(text: AppStrings.email),
              CustomTextFormField(
                  controller: emailController,
                  hint: AppStrings.emailHint,
                  prefixIcon: Icons.email),

              //Password Form Field
              const SizedBox(height: 20),
              const TextInputField(text: AppStrings.password),
              CustomTextFormField(
                  controller: passwordController,
                  hint: AppStrings.passwordHint,
                  prefixIcon: Icons.lock),

              //Login Button
              const SizedBox(height: 40),
              CustomButton(
                  emailController: emailController,
                  passwordController: passwordController,
                  userRepository: userRepository),

              //Don't have account section
              const SizedBox(height: 20),
              DontHaveAccountSection(),
            ],
          )
        ],
      ),
    ))));
  }
}
