import 'package:flower_shop/Providers/cart_provider.dart';
import 'package:flower_shop/models/product_model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChechOutItem extends StatelessWidget {
  const ChechOutItem({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        shape: const LinearBorder(),
        child: ListTile(
          title: Text(productModel.brand!=null?productModel.brand!:'Product'),
          subtitle: Text('\$ ${productModel.price} - main Branch'),
          leading: CircleAvatar(backgroundImage: NetworkImage(productModel.thumbnail!),),
          trailing: Consumer<CartProvider>(
            builder: (context, value, child) {
              return IconButton(
                onPressed: () {
                  value.deleteProductFromMyList(productModel);
                },
                icon: const Icon(Icons.remove),
              );
            },
          ),
        )

        // Row(children: [
        //   ItemImage(
        //     image: productModel.thumbnail!,
        //   ),
        //   CustomItemText(
        //     productName: productModel.brand!,
        //     price: productModel.price!,
        //   ),
        //   const Spacer(),
        //   Consumer<CartProvider>(
        //     builder: (context, value, child) {
        //       return IconButton(
        //         onPressed: () {
        //           value.deleteProductFromMyList(productModel);
        //         },
        //         icon: const Icon(Icons.remove),
        //       );
        //     },
        //   ),
        //   const SizedBox(
        //     width: 12,
        //   ),
        // ]),
        );
  }
}
