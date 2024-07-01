import 'package:flutter/material.dart';

class WriteReviewTextbox extends StatelessWidget {
  const WriteReviewTextbox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 164,
      child: TextFormField(
        expands: true,
        maxLines: null,
        minLines: null,
        keyboardType: TextInputType.multiline,
        textAlignVertical: TextAlignVertical.top,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 16.0,
          ),
          hintText: "Tell us about your experience",
          hintStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Color(0xFF868889),
          ),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              top: 24,
            ),
            child: Column(
              children: [
                Icon(
                  Icons.edit_outlined,
                ),
              ],
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 199, 199, 199),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
