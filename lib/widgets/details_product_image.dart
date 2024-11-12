import 'package:flutter/material.dart';

class DetailsProductImage extends StatelessWidget {
  const DetailsProductImage({
    super.key, required this.productImage,
  });

  final String productImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .5,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(productImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}