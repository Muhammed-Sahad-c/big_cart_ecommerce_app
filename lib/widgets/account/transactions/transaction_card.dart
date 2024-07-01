import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.name,
    required this.iconPath,
    required this.amount,
    required this.time,
  });

  final String name;
  final String iconPath;
  final String amount;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      leading: CircleAvatar(
        backgroundColor: const Color(0xFFF5F5F5),
        radius: 26,
        child: SvgPicture.asset(
          iconPath,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      subtitle: const Text(
        "Dec 12 2021 at 10:00 pm",
        style: TextStyle(
          fontSize: 10,
          color: Colors.black,
        ),
      ),
      trailing: Text(
        "\$ $amount",
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Color(0xFF28B446),
        ),
      ),
    );
  }
}
