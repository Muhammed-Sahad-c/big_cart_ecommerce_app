import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput(
      {super.key,
      this.controller,
      required this.hintText,
      this.obscureText = false,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType});

  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 24.0,
          horizontal: 16.0,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Color(0xFF868889),
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: const Color(0xFF868889),
              )
            : null,
        suffixIcon: suffixIcon != null
            ? Icon(
                suffixIcon,
                color: const Color(0xFF868889),
              )
            : null,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 199, 199, 199),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
