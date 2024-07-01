import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      child: TextField(
        expands: true,
        maxLines: null,
        minLines: null,
        decoration: InputDecoration(
          prefixIcon: Icon(
            color: Color(0xFF868889),
            Icons.search,
          ),
          suffixIcon: Icon(
            color: Color(0xFF868889),
            Icons.filter_list_outlined,
          ),
          hintText: "Search keywords",
          hintStyle: TextStyle(
            color: Color(0xFF868889),
            fontWeight: FontWeight.w500,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          filled: true,
          fillColor: Color(0xFFF4F5F9),
        ),
      ),
    );
  }
}
