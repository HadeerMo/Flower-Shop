import 'package:flutter/material.dart';

class ShoppingCartIcon extends StatelessWidget {
  const ShoppingCartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
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
            child: const Text(
              '8',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
