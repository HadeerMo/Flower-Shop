import 'package:flower_shop/Providers/cart_provider.dart';
import 'package:flower_shop/models/product_model/product_model.dart';
import 'package:flower_shop/widgets/check_out_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckOutBody extends StatelessWidget {
  const CheckOutBody({super.key});

  @override
  Widget build(BuildContext context) {
    CartProvider provider =   Provider.of<CartProvider>(context);
    List<ProductModel> myProducts =provider.myProducts;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .75,
            child: ListView.builder(
              // shrinkWrap: true,
              itemCount: myProducts.length,
              itemBuilder: (context, index) {
                return ChechOutItem(
                  productModel: myProducts[index],
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(
                  Color.fromARGB(255, 241, 76, 104),
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                padding: const WidgetStatePropertyAll(EdgeInsets.all(9))
              ),
              child: Text(
                'Pay \$ ${provider.totalPrice}',
                style: const TextStyle(color: Colors.white),
              ),),
        ),
            
      ],
    );
  }
}
