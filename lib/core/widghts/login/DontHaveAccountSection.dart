import 'package:flutter/material.dart';
import 'package:project_04/core/constants/colors.dart';
import 'package:project_04/core/constants/strings.dart';
import 'package:project_04/features/auth/presentation/sign_up_secreen.dart';

class DontHaveAccountSection extends StatelessWidget {
  const DontHaveAccountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppStrings.dontHaveAccount,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SignUpScreen()),
            );
          },
          child: const Text(AppStrings.registerNow, style: TextStyle(color: AppColors.primaryColor)),
        ),
      ],
    );
  }
}