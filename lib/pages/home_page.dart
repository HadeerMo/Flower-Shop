import 'package:flower_shop/Providers/cart_provider.dart';
import 'package:flower_shop/constant.dart';
import 'package:flower_shop/cubites/cubit/home_cubit.dart';
import 'package:flower_shop/widgets/drawer_profile_footer.dart';
import 'package:flower_shop/widgets/home_page_body.dart';
import 'package:flower_shop/widgets/profile_info.dart';
import 'package:flower_shop/widgets/shopping_cart_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeCubit>(context).getAllProduct();
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(
          shape: LinearBorder(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProfileInfo(),
              DrawerProfileFooter(),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: appbarColor,
          foregroundColor: Colors.white,
          title: const Text(
            'Home',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            const ShoppingCartIcon(),
            Consumer<CartProvider>(
              builder: (context, value, child) {
                return Text(
                  '\$ ${value.totalPrice}',
                  style: const TextStyle(fontSize: 16),
                );
              },
              // child: Text(
              //   '\$ 0',
              //   style: TextStyle(fontSize: 16),
              // ),
            ),
            const SizedBox(
              width: 13,
            ),
          ],
        ),
        body: const HomePageBody(),
      ),
    );
  }
}
