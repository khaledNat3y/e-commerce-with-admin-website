import 'package:e_commerce_with_admin_website/core/routing/routes.dart';
import 'package:e_commerce_with_admin_website/features/auth/ui/forgot_password_view.dart';
import 'package:e_commerce_with_admin_website/features/auth/ui/register_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/ui/login_view.dart';


class AppRouter {
  static GoRouter goRouter = GoRouter(
    initialLocation: Routes.login,
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
    ]
  );
}