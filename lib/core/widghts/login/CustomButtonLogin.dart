import 'package:flutter/material.dart';
import 'package:project_04/core/constants/colors.dart';
import 'package:project_04/core/utils/validators.dart';
import 'package:project_04/features/auth/data/user_repository.dart';
import 'package:project_04/features/home/presentation/home_screen.dart';
import 'package:project_04/nav_bar.dart';

class CustomButton extends StatelessWidget {
  final String success;
  final String failed;
  final String operation;
  const CustomButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.userRepository, required this.success, required this.failed, required this.operation,
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
          if (userRepository.isUserRegistered(email, password)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(success)),
        );
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const NavBar(initialIndex: 0),),
          (route) => false,
        );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(failed)),
            );
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(emailError ?? passwordError!)),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 165,
          vertical: 20,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(operation, style: const TextStyle( color: Colors.white)),
    );
  }
}



