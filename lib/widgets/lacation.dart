import 'package:flower_shop/constant.dart';
import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.edit_location,
          color: appbarColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Beauty Shop',
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}