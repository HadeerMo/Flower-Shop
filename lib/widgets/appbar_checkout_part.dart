import 'package:flower_shop/Providers/cart_provider.dart';
import 'package:flower_shop/widgets/shopping_cart_icon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppbarChckoutPart extends StatelessWidget {
  const AppbarChckoutPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ShoppingCartIcon(),
        Consumer<CartProvider>(
          builder: (context, value, child) {
            return Text(
              '\$ ${value.totalPrice}',
              style: const TextStyle(fontSize: 16),
            );
          },
        ),
      ],
    );
  }
}