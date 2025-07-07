import 'package:e_commerce_with_admin_website/views/auth/ui/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const OurMarket());
}

class OurMarket extends StatelessWidget {
  const OurMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Our Market",
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white
      ),
      home: LoginView(),
    );
  }
}

