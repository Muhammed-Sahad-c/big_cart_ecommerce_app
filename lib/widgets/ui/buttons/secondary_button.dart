import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
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
      backgroundColor: Colors.white,
      padding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );

    return icon != null
        ? ElevatedButton.icon(
            style: buttonStyle,
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 20,
              color: const Color(0xFF868889),
            ),
            label: Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF868889),
              ),
            ),
          )
        : ElevatedButton(
            style: buttonStyle,
            onPressed: onPressed,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF868889),
              ),
            ),
          );
  }
}
