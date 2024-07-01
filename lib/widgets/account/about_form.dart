import 'package:flutter/material.dart';
import 'package:myapp/widgets/ui/text_input.dart';

class AboutForm extends StatelessWidget {
  const AboutForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 24,
        ),
        Text(
          "Personal details",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 13,
        ),
        TextInput(
          hintText: "Russell Austin",
          prefixIcon: Icons.account_circle_outlined,
        ),
        SizedBox(
          height: 5,
        ),
        TextInput(
          hintText: "russell.partner@gmail.com",
          prefixIcon: Icons.email_outlined,
        ),
        SizedBox(
          height: 5,
        ),
        TextInput(
          hintText: "+1  202  555  0142",
          prefixIcon: Icons.call_outlined,
        ),
        SizedBox(
          height: 34,
        ),
        Text(
          "Change password",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 13,
        ),
        TextInput(
          hintText: "Current password",
          prefixIcon: Icons.lock_outline_rounded,
        ),
        SizedBox(
          height: 5,
        ),
        TextInput(
          hintText: "New password",
          prefixIcon: Icons.lock_outline_rounded,
        ),
        SizedBox(
          height: 5,
        ),
        TextInput(
          hintText: "Confirm password",
          prefixIcon: Icons.lock_outline_rounded,
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
