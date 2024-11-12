part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {
  HomeSuccess({required this.products});
  List<ProductModel> products;
}

final class HomeFailure extends HomeState {
  HomeFailure({required this.errorMsg});
  String errorMsg;
}
