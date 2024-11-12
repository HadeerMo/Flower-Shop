import 'package:flower_shop/cubites/cubit/home_cubit.dart';
import 'package:flower_shop/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeSuccess) {
          return Padding(
            padding: const EdgeInsets.only(top: 22),
            child: GridView.builder(
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                return ProductItem(
                  productModel: state.products[index],
                );
              },
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.5 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33,
              ),
            ),
          );
        } else if (state is HomeLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HomeFailure) {
          return Text(state.errorMsg);
        } else {
          return const Text('init...');
        }
      },
    );
  }
}
