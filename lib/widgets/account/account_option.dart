import 'package:flutter/material.dart';

class AccountOption extends StatelessWidget {
  const AccountOption({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      leading: Icon(
        icon,
        size: 20,
        color: const Color(0xFF28B446),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_outlined,
        size: 16,
        color: Color(0xFF868889),
      ),
    );
  }
}
