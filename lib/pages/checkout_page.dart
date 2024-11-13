import 'package:flower_shop/Providers/cart_provider.dart';
import 'package:flower_shop/constant.dart';
import 'package:flower_shop/widgets/check_out_body.dart';
import 'package:flower_shop/widgets/shopping_cart_icon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});
  static String id = 'CheckoutPage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
        foregroundColor: Colors.white,
        title: const Text(
          'Check out',
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
      body: const CheckOutBody(),
    ));
  }
}
