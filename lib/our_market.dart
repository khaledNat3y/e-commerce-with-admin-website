import 'package:e_commerce_with_admin_website/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';

class OurMarket extends StatelessWidget {
  const OurMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Our Market",
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.kScaffoldColor,
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.kScaffoldColor),
      ),
      routerConfig: AppRouter.goRouter,
    );
  }
}
