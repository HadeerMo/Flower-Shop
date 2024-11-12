import 'package:flower_shop/models/product_model/product_model.dart';
import 'package:flower_shop/pages/details_page.dart';
import 'package:flower_shop/widgets/price_text.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailsPage.id, arguments: productModel);
      },
      child: GridTile(
        footer: GridTileBar(
          title: const Text(''),
          leading: PriceText(price: productModel.price!),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              )),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -3,
              bottom: -9,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadiusDirectional.vertical(
                    top: Radius.circular(55)),
                child: Image.network(productModel.thumbnail!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


