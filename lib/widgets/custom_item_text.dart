import 'package:flutter/material.dart';

class CustomItemText extends StatelessWidget {
  const CustomItemText({
    super.key,
    required this.productName,
    required this.price,
  });
  final String productName;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Opacity(
            opacity: .6,
            child: Text(
              '\$ $price - main Branch',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ))
      ],
    );
  }
}