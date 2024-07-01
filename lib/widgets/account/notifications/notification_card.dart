import 'package:flutter/material.dart';
import 'package:myapp/widgets/ui/switcher.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.nfcnName,
    required this.nfcnDescp,
    this.nfcnIsActive = false,
  });

  final String nfcnName;
  final String nfcnDescp;
  final bool nfcnIsActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      tileColor: Colors.white,
      title: Text(
        nfcnName,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        child: Text(
          nfcnDescp,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Color(0xFF868889),
          ),
        ),
      ),
      trailing: Switcher(
        isActive: nfcnIsActive,
      ),
    );
  }
}
