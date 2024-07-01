import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/screens/account/screen_about.dart';
import 'package:myapp/screens/account/screen_notifications.dart';
import 'package:myapp/screens/account/screen_transactions.dart';
import 'package:myapp/screens/auth/screen_login.dart';
import 'package:myapp/screens/screen_favorites.dart';
import 'package:myapp/widgets/account/account_option.dart';

class AccountOptions extends StatelessWidget {
  const AccountOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const ScreenAbout(),
              ),
            );
          },
          child: const AccountOption(
            title: "About me",
            icon: Icons.account_circle_outlined,
          ),
        ),
        const AccountOption(
          title: "My orders",
          icon: Icons.inventory_2_outlined,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const ScreenFavorites(),
              ),
            );
          },
          child: const AccountOption(
            title: "My favorites",
            icon: Icons.favorite_border_outlined,
          ),
        ),
        const AccountOption(
          title: "My Address",
          icon: Icons.pin_drop_outlined,
        ),
        const AccountOption(
          title: "Credit Cards",
          icon: Icons.credit_card_off_outlined,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const ScreenTransactions(),
              ),
            );
          },
          child: const AccountOption(
            title: "Transactions",
            icon: Icons.receipt_long_outlined,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const ScreenNotifications(),
              ),
            );
          },
          child: const AccountOption(
            title: "Notifications",
            icon: Icons.notifications_outlined,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const ScreenLogin(),
              ),
            );
          },
          child: const AccountOption(
            title: "Signout",
            icon: Icons.logout_outlined,
          ),
        ),
      ],
    );
  }
}
