import 'package:flutter/material.dart';

class New extends StatelessWidget {
  const New({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: Colors.red[300],
          borderRadius: BorderRadius.circular(5)),
      child: const Text(
        'New',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}