import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

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
        backgroundColor: const Color(0xFFEBFFD7),
        radius: 24,
        child: SvgPicture.asset(
          "assets/icons/order-icons/orderbox.svg",
        ),
      ),
      title: const Text(
        "Order #1222323",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Placed on Octobar 19 2021",
            style: TextStyle(
              fontSize: 10,
              color: Color(0xFF868889),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            children: [
              Row(
                children: [
                  Text(
                    "Items:",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    "10",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 14,
              ),
              Row(
                children: [
                  Text(
                    "Price:",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    "\$100",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
