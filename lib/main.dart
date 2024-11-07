import 'package:flower_shop/pages/home_page.dart';
import 'package:flower_shop/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlowerShop());
}

class FlowerShop extends StatelessWidget {
  const FlowerShop({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const HomePage(),
        RegisterPage.id : (context) => const RegisterPage(),
        HomePage.id : (context) => const HomePage(),
      },
    );
  }
}

