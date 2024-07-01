import 'package:flutter/material.dart';
import 'package:myapp/widgets/orders/order_status_card.dart';

class OrderStatusList extends StatelessWidget {
  OrderStatusList({super.key});

  final orderStatuses = [
    {
      "name": "Order placed",
      "time": "October 21 2021",
      "isCompleted": true,
      "icon": "/assets/icons/order-icons/order-placed.svg",
    },
    {
      "name": "Order confirmed",
      "time": "October 21 2021",
      "isCompleted": true,
      "icon": "/assets/icons/order-icons/order-confirmed.svg",
    },
    {
      "name": "Order shipped",
      "time": "October 21 2021",
      "isCompleted": true,
      "icon": "/assets/icons/order-icons/order-shipped.svg",
    },
    {
      "name": "Out of delivery",
      "time": "Pending",
      "isCompleted": false,
      "icon": "/assets/icons/order-icons/out-of-delivery.svg",
    },
    {
      "name": "Order delivered",
      "time": "Pending",
      "isCompleted": false,
      "icon": "/assets/icons/order-icons/order-deliveried.svg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return OrderStatusCard(
          name: orderStatuses[index]["name"] as String,
          time: orderStatuses[index]["time"] as String,
          icon: orderStatuses[index]["icon"] as String,
          isCompleted: orderStatuses[index]["isCompleted"] as bool,
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 16,
        );
      },
      itemCount: orderStatuses.length,
    );
  }
}
