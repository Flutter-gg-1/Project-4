import 'package:flutter/material.dart';
import 'package:project_04/core/constants/colors.dart';
import 'package:project_04/core/constants/strings.dart';
import 'package:project_04/features/auth/presentation/login_screen.dart';

class HaveAccountSection extends StatelessWidget {
  const HaveAccountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
