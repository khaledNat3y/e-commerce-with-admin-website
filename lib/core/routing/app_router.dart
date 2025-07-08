import 'package:e_commerce_with_admin_website/core/routing/routes.dart';
import 'package:e_commerce_with_admin_website/features/auth/ui/forgot_password_view.dart';
import 'package:e_commerce_with_admin_website/features/auth/ui/register_view.dart';
import 'package:e_commerce_with_admin_website/features/main_view/home_view/ui/home_view.dart';
import 'package:e_commerce_with_admin_website/features/main_view/main_view.dart';
import 'package:e_commerce_with_admin_website/features/main_view/main_view_logic/nav_bar_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/ui/login_view.dart';


class AppRouter {
  static GoRouter goRouter = GoRouter(
      initialLocation: Routes.mainView,
      routes: [
        GoRoute(
            path: Routes.login,
            name: Routes.login,
            builder: (context, state) {
              return const LoginView();
            }
        ),
        GoRoute(
            path: Routes.register,
            name: Routes.register,
            builder: (context, state) {
              return const RegisterView();
            }
        ),
        GoRoute(
            path: Routes.forgotPassword,
            name: Routes.forgotPassword,
            builder: (context, state) {
              return const ForgotPasswordView();
            }
        ),
        GoRoute(
            path: Routes.home,
            name: Routes.home,
            builder: (context, state) {
              return const HomeView();
            }
        ),
        GoRoute(
            path: Routes.mainView,
            name: Routes.mainView,
            builder: (context, state) {
              return BlocProvider(
                create: (context) => NavBarCubit(),
                child: const MainView(),
              );
            }
        ),
      ]
  );
}