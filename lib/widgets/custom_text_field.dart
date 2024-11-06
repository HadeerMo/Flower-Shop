import 'package:flutter/material.dart';

class CustomerInputField extends StatelessWidget {
  const CustomerInputField({
    super.key,
    required this.hint,
    required this.icon,
    this.secure = false, this.keyboardType,
  });
  final String hint;
  final IconData icon;
  final bool secure;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: secure,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        suffixIcon: Icon(
          icon,
          color: const Color.fromARGB(255, 107, 105, 105),
        ),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 107, 104, 104),
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
        filled: true,
      ),
    );
  }
}
