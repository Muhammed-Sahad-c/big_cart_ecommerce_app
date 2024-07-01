import 'package:flutter/material.dart';
import 'package:myapp/widgets/orders/order_card.dart';
import 'package:myapp/widgets/orders/order_status_list.dart';

class ScreenTrackOrder extends StatelessWidget {
  const ScreenTrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Track order",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              OrderCard(),
              SizedBox(
                height: 32,
              ),
              OrderStatusList(),
            ],
          ),
        ),
      ),
    );
  }
}
