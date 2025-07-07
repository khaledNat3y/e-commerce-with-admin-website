import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don’t have an account? ",
          style: TextStyle(color: Color(0xFF757575)),
        ),
        GestureDetector(
          onTap: () {
            // Handle navigation to Sign Up
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: AppColors.kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
