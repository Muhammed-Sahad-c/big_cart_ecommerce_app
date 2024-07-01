import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.icon,
    this.alignment,
  });

  final VoidCallback onPressed;
  final String label;
  final IconData? icon;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      alignment: alignment,
      elevation: 0,
      fixedSize: const Size(double.infinity, 60),
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );

    return Container(
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFAEDC81),
            Color(0xFF6CC51D),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: icon != null
          ? ElevatedButton.icon(
              style: buttonStyle,
              onPressed: onPressed,
              icon: Padding(
                padding: const EdgeInsets.only(
                  right: 8.0,
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              label: Text(
                label,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          : ElevatedButton(
              style: buttonStyle,
              onPressed: onPressed,
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
    );
  }
}
