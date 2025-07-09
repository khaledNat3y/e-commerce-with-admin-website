import 'package:e_commerce_with_admin_website/core/theming/app_colors.dart';
import 'package:e_commerce_with_admin_website/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AppTextFormField(
          hintText: "Search in Market",
          validator: (value) {},
          suffixIcon: GestureDetector(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                  Icons.search,
                  size: 32,
                color: AppColors.white,
              ),
            ),
          ),
        ),

      ],
    );
  }
}
