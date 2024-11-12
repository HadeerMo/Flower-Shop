import 'package:flower_shop/constant.dart';
import 'package:flower_shop/models/product_model/product_model.dart';
import 'package:flower_shop/widgets/details_body.dart';
import 'package:flower_shop/widgets/shopping_cart_icon.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});
  static String id = 'Details Page';
  @override
  Widget build(BuildContext context) {
    ProductModel productdetails =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appbarColor,
          foregroundColor: Colors.white,
          title: const Text(
            'Details Screen',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: const [
            ShoppingCartIcon(),
            Text(
              '\$ 128',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 13,
            ),
          ],
        ),
        body: DetailsBody(productDetails: productdetails,),
      ),
    );
  }
}
