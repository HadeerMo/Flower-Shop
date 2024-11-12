import 'package:bloc/bloc.dart';
import 'package:flower_shop/models/product_model/product_model.dart';
import 'package:flower_shop/services/api.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  getAllProduct() async {
    emit(HomeLoading());
    try {
      var responseProducts = await Api()
          .get(url: 'https://dummyjson.com/products/category/skin-care');
      var responseProducts2 = await Api()
          .get(url: 'https://dummyjson.com/products/category/beauty');
      var responseProducts3 = await Api()
          .get(url: 'https://dummyjson.com/products/category/womens-jewellery');
      List<ProductModel> products = [];
      for (var product in responseProducts['products']) {
        products.add(ProductModel.fromJson(product));
      }
      for (var product in responseProducts2['products']) {
        products.add(ProductModel.fromJson(product));
      }
      for (var product in responseProducts3['products']) {
        products.add(ProductModel.fromJson(product));
      }
      emit(HomeSuccess(products: products));
    } catch (e) {
      emit(HomeFailure(errorMsg: e.toString()));
    }
  }
}
