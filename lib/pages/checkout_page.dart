import 'package:flower_shop/constant.dart';
import 'package:flower_shop/widgets/appbar_checkout_part.dart';
import 'package:flower_shop/widgets/check_out_body.dart';
import 'package:flutter/material.dart';

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
        actions: const [
          AppbarChckoutPart(),
          SizedBox(
            width: 13,
          ),
        ],
      ),
      body: const CheckOutBody(),
    ));
  }
}
