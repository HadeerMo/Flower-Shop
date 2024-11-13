import 'package:flower_shop/widgets/custom_item_text.dart';
import 'package:flower_shop/widgets/item_image.dart';
import 'package:flutter/material.dart';

class CheckOutBody extends StatelessWidget {
  const CheckOutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return const ChechOutItem();
      },
    );
  }
}

class ChechOutItem extends StatelessWidget {
  const ChechOutItem({
    super.key,
    //  required this.productModel,
  });
  // final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const LinearBorder(),
      child: Row(children: [
        const ItemImage(
          image: 'assets/images/one.jpg',
        ),
        const CustomItemText(
          productName: 'Product 1',
          price: 19.9,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.remove),
        ),
        const SizedBox(
          width: 12,
        ),
      ]),
    );
  }
}
