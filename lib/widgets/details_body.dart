import 'package:flower_shop/models/product_model/product_model.dart';
import 'package:flower_shop/widgets/details_product_image.dart';
import 'package:flower_shop/widgets/details_widget.dart';
import 'package:flower_shop/widgets/product_info.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.productDetails});
  final ProductModel productDetails;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailsProductImage(productImage: productDetails.thumbnail!),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              '\$ ${productDetails.price}',
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ProductInfo(rating: productDetails.rating!),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: DetailsWidget(productDetails: productDetails.description!),
          ),
        ],
      ),
    );
  }
}




