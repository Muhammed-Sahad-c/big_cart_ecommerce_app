import 'package:flutter/material.dart';

class ShippingMethodCard extends StatelessWidget {
  const ShippingMethodCard({
    super.key,
    required this.title,
    required this.description,
    required this.amount,
  });

  final String title;
  final String description;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child:  ListTile(
        contentPadding: const EdgeInsets.all(0),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(
            top: 12,
          ),
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF868889),
            ),
          ),
        ),
        trailing: Text(
          "\$ $amount",
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Color(0xFF6CC51D),
          ),
        ),
      ),
    );
  }
}
