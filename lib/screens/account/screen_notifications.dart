import 'package:flutter/material.dart';
import 'package:myapp/screens/account/screen_account.dart';
import 'package:myapp/widgets/account/notifications/notifications_list.dart';
import 'package:myapp/widgets/ui/buttons/primary_button.dart';

class ScreenNotifications extends StatelessWidget {
  const ScreenNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Notifications",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: NotificationsList(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: PrimaryButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const ScreenAccount(),
              ),
            );
          },
          label: "Save settings",
        ),
      ),
    );
  }
}
