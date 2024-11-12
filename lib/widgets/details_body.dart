import 'package:flower_shop/constant.dart';
import 'package:flower_shop/models/product_model/product_model.dart';
import 'package:flower_shop/widgets/details_product_image.dart';
import 'package:flower_shop/widgets/new.dart';
import 'package:flower_shop/widgets/product_rate.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.productDetails});
  final ProductModel productDetails;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailsProductImage(productImage: productDetails.thumbnail!),
        const SizedBox(
          height: 10,
        ),
        Text(
          '\$ ${productDetails.price}',
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
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
                    rate: productDetails.rating!,
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.edit_location,
                    color: appbarColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Beauty Shop',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}


