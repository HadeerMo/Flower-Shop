import 'package:flower_shop/widgets/lacation.dart';
import 'package:flower_shop/widgets/new.dart';
import 'package:flower_shop/widgets/product_rate.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const New(),
              const SizedBox(
                width: 15,
              ),
              ProductRate(
                rate: rating,
              ),
            ],
          ),
          const Location()
        ],
      ),
    );
  }
}