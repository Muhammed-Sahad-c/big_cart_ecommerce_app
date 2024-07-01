import 'package:flutter/material.dart';

class Switcher extends StatelessWidget {
  const Switcher({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 28,
      height: 20,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Switch(
          value: isActive,
          activeColor: Colors.white,
          activeTrackColor: const Color(0xFF6CC51D),
          inactiveThumbColor: Colors.white,
          onChanged: (bool value) {},
        ),
      ),
    );
  }
}
