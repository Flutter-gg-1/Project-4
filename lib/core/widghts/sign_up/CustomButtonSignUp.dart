import 'package:flutter/material.dart';
import 'package:project_04/core/constants/colors.dart';
import 'package:project_04/core/constants/strings.dart';
import 'package:project_04/core/utils/validators.dart';
import 'package:project_04/features/auth/data/user_repository.dart';
import 'package:project_04/features/auth/presentation/login_screen.dart';

class CustomButtonSignUp extends StatelessWidget {
  const CustomButtonSignUp({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.userRepository,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final UserRepository userRepository;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
          horizontal: 160,
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
    );
  }
}

