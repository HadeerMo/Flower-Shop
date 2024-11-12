import 'package:flutter/material.dart';

class ProductRate extends StatelessWidget {
  const ProductRate({
    super.key,
    required this.rate,
  });
  final double rate;
  @override
  Widget build(BuildContext context) {
    IconData star1 = Icons.star_border;
    IconData star2 = Icons.star_border;
    IconData star3 = Icons.star_border;
    IconData star4 = Icons.star_border;
    IconData star5 = Icons.star_border;

    if (rate > 0 && rate < 1) {
      star1 = Icons.star_half;
    }
    if (rate > 1) {
      star1 = Icons.star;
    }
    if (rate > 1 && rate < 2) {
      star2 = Icons.star_half;
    }
    if (rate > 2) {
      star2 = Icons.star;
    }
    if (rate > 2 && rate < 3) {
      star3 = Icons.star_half;
    }
    if(rate > 3){
      star3 = Icons.star;
    }
    if (rate > 3 && rate < 4) {
      star4 = Icons.star_half;
    }
    if(rate >4){
      star4 = Icons.star;
    }
    if (rate > 4 && rate < 5) {
      star5 = Icons.star_half;
    }
    if(rate == 5){
      star5 = Icons.star;
    }
    return Row(
      children: [
        Icon(
          star1,
          color: Colors.amber[400],
        ),
        Icon(
          star2,
          color: Colors.amber[400],
        ),
        Icon(
          star3,
          color: Colors.amber[400],
        ),
        Icon(
          star4,
          color: Colors.amber[400],
        ),
        Icon(
          star5,
          color: Colors.amber[400],
        ),
      ],
    );
  }
}