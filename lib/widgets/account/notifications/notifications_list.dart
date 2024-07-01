import 'package:flutter/material.dart';
import 'package:myapp/widgets/account/notifications/notification_card.dart';

class NotificationsList extends StatelessWidget {
  const NotificationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 24,
        ),
        NotificationCard(
          nfcnName: "Allow Notifcations",
          nfcnDescp:
              "Lorem ipsum dolor sit amet, consetetur sadi pscing elitr, sed diam nonumym",
          nfcnIsActive: true,
        ),
        SizedBox(
          height: 12,
        ),
        NotificationCard(
          nfcnName: "Email Notifcations",
          nfcnDescp:
              "Lorem ipsum dolor sit amet, consetetur sadi pscing elitr, sed diam nonumym",
        ),
        SizedBox(
          height: 12,
        ),
        NotificationCard(
          nfcnName: "Order Notifcations",
          nfcnDescp:
              "Lorem ipsum dolor sit amet, consetetur sadi pscing elitr, sed diam nonumym",
        ),
        SizedBox(
          height: 12,
        ),
        NotificationCard(
          nfcnName: "General Notifcations",
          nfcnDescp:
              "Lorem ipsum dolor sit amet, consetetur sadi pscing elitr, sed diam nonumym",
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
