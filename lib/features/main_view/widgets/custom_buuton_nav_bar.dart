import 'package:e_commerce_with_admin_website/features/main_view/main_view_logic/nav_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../../../core/theming/app_colors.dart';

class CustomButtonNavBar extends StatelessWidget {
  const CustomButtonNavBar({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: GNav(
        selectedIndex: context.read<NavBarCubit>().currentIndex,
        onTabChange: (index) {
          context.read<NavBarCubit>().changeCurrentIndex(index);
        },
        rippleColor: Colors.blue[800]!,
        hoverColor: Colors.blue[700]!,
        tabBorderRadius: 40,
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 300),
        gap: 8,
        color: Colors.grey,
        // inactive icon color
        activeColor: AppColors.white,
        // active icon & text color
        iconSize: 24,
        tabBackgroundColor: AppColors.kPrimaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        tabs: const [
          GButton(icon: LineIcons.home, text: 'Home'),
          GButton(icon: LineIcons.store, text: 'Store'),
          GButton(icon: LineIcons.heartAlt, text: 'Favorite'),
          GButton(icon: LineIcons.user, text: 'Profile'),
        ],
      ),
    );
  }
}
