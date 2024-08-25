import 'package:flutter/material.dart';
import 'package:project_04/core/constants/colors.dart';
import 'package:project_04/core/constants/images.dart';
import 'package:project_04/core/constants/strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          AppImages.appLogo,
        ),
        const SizedBox(height: 15),
        const Text(
          AppStrings.welcomeUser,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.secondaryColor,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          AppStrings.loginDescription,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
