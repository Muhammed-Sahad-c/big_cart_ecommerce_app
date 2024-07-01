import 'package:flutter/material.dart';

class SearchChip extends StatelessWidget {
  const SearchChip({super.key, required this.chipLabel});

  final String chipLabel;

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0), // Border radius 0
        side: const BorderSide(
          color: Colors.transparent,
        ), // No border
      ),
      backgroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      label: Text(
        chipLabel,
        style: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: Color(0xFF868889),
        ),
      ),
    );
  }
}
