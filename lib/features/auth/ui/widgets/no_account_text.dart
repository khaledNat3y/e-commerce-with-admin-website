import 'package:e_commerce_with_admin_website/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';

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
            GoRouter.of(context).pushNamed(Routes.register);
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: AppColors.kPrimaryColor,
              fontWeight: FontWeightHelper.bold
            ),
          ),
        ),
      ],
    );
  }
}
