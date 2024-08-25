import 'package:flutter/material.dart';
import 'package:project_04/core/constants/colors.dart';
import 'package:project_04/core/constants/images.dart';
import 'package:project_04/core/constants/strings.dart';
import 'package:project_04/core/utils/validators.dart';
import 'package:project_04/features/auth/data/user_repository.dart';
import 'package:project_04/features/auth/presentation/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final UserRepository userRepository = UserRepository();

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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(AppImages.appLogo),
                    const SizedBox(height: 15),
                    const Text(
                      AppStrings.registerUser,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      AppStrings.registerDescription,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppStrings.firstName,
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: AppStrings.firstNameHint,
                        hintStyle: const TextStyle(
                          color: AppColors.accentColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppStrings.lastName,
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: AppStrings.lastNameHint,
                        hintStyle: const TextStyle(
                          color: AppColors.accentColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppStrings.phoneNumber,
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: AppStrings.phoneNumberHint,
                        hintStyle: const TextStyle(
                          color: AppColors.accentColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                        prefixIcon: const Icon(Icons.phone),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppStrings.email,
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: AppStrings.emailHint,
                        hintStyle: const TextStyle(
                          color: AppColors.accentColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: validateEmail,
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppStrings.password,
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ),
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
                    ElevatedButton(
                      onPressed: () {
                        final email = emailController.text;
                        final password = passwordController.text;

                        final emailError = validateEmail(email);
                        final passwordError = validatePassword(password);

                        if (emailError == null && passwordError == null) {
                          if (userRepository.registerUser(email, password)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(AppStrings.registerSuccess)),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(AppStrings.registerFailed)),
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(emailError ?? passwordError!)),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 20,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        AppStrings.register,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          AppStrings.haveAccount,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          child: const Text(AppStrings.login, style: TextStyle(color: AppColors.primaryColor),)
                        ),
                      ],
                    ),
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
