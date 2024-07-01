import 'package:flutter/material.dart';

class AuthCoverImage extends StatelessWidget {
  const AuthCoverImage({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(imagePath),
          alignment: Alignment.topCenter,
        ),
      ),
      width: double.infinity,
      height: double.infinity,
    );
  }
}
