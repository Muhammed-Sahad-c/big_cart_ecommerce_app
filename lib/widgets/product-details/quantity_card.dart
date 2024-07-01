import 'package:flutter/material.dart';

class QuantityCard extends StatelessWidget {
  const QuantityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      width: double.infinity,
      height: 50,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Quantity",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF868889),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.remove,
                  color: Color(0xFF28B446),
                ),
                SizedBox(
                  child: VerticalDivider(
                    color: Color(0xFFEBEBEB),
                  ),
                ),
                Text(
                  "11",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                VerticalDivider(
                  color: Color(0xFFEBEBEB),
                ),
                Icon(
                  Icons.add,
                  color: Color(0xFF28B446),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
