import 'package:e_commerce_with_admin_website/features/main_view/favorite_view/ui/favorite_view.dart';
import 'package:e_commerce_with_admin_website/features/main_view/home_view/ui/home_view.dart';
import 'package:e_commerce_with_admin_website/features/main_view/main_view_logic/nav_bar_cubit.dart';
import 'package:e_commerce_with_admin_website/features/main_view/profile_view/ui/profile_view.dart';
import 'package:e_commerce_with_admin_website/features/main_view/store_view/ui/store_view.dart';
import 'package:e_commerce_with_admin_website/features/main_view/widgets/custom_buuton_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatelessWidget {

  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
     const List<Widget> views = [
      HomeView(),
      StoreView(),
      FavoriteView(),
      ProfileView(),
    ];
    return Scaffold(
      bottomNavigationBar: const CustomButtonNavBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<NavBarCubit, NavBarState>(
          bloc: context.read<NavBarCubit>(),
          builder: (context, state) {
            final cubit = context.read<NavBarCubit>();
            return views[cubit.currentIndex];
          },
        ),
      ),
    );
  }
}

