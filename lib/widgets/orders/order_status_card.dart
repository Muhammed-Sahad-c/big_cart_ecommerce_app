import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderStatusCard extends StatelessWidget {
  const OrderStatusCard({
    super.key,
    required this.name,
    required this.time,
    required this.icon,
    this.isCompleted = false,
  });

  final String name;
  final String time;
  final String icon;
  final bool isCompleted;

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
        backgroundColor: Color(
          isCompleted ? 0xFFEBFFD7 : 0xFFF5F5F5,
        ),
        radius: 24,
        child: SvgPicture.asset(
          icon,
          colorFilter: ColorFilter.mode(
            Color(
              isCompleted ? 0xFF28B446 : 0xFF868889,
            ),
            BlendMode.srcIn,
          ),
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        time,
        style: const TextStyle(
          fontSize: 10,
          color: Color(0xFF868889),
        ),
      ),
    );
  }
}
