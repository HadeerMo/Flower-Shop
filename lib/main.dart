import 'package:flower_shop/cubites/cubit/home_cubit.dart';
import 'package:flower_shop/pages/details_page.dart';
import 'package:flower_shop/pages/home_page.dart';
import 'package:flower_shop/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BeautyShop());
}

class BeautyShop extends StatelessWidget {
  const BeautyShop({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const HomePage(),
          RegisterPage.id: (context) => const RegisterPage(),
          HomePage.id: (context) => const HomePage(),
          DetailsPage.id: (context) => const DetailsPage(),
        },
      ),
    );
  }
}
