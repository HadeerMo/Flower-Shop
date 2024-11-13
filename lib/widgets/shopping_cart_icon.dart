import 'package:flower_shop/Providers/cart_provider.dart';
import 'package:flower_shop/pages/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingCartIcon extends StatelessWidget {
  const ShoppingCartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, value, child) {
        return Stack(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, CheckoutPage.id);
              },
              icon: const Icon(
                Icons.add_shopping_cart,
              ),
            ),
            Opacity(
              opacity: .7,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(211, 146, 255, 193),
                ),
                child: Text(
                  value.myProducts.length.toString(),
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
