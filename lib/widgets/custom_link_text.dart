import 'package:flutter/material.dart';

class CustomLinkText extends StatelessWidget {
  const CustomLinkText({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue,
          ),
        ));
  }
}
