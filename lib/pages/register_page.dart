import 'package:flower_shop/widgets/register_body.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  static String id = 'Register page';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: RegisterBody(),
      ),
    );
  }
}
