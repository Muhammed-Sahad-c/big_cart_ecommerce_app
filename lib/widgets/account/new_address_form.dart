import 'package:flutter/material.dart';
import 'package:myapp/widgets/ui/text_input.dart';

class NewAddressForm extends StatelessWidget {
  const NewAddressForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 24,
        ),
        TextInput(
          hintText: "Name",
          prefixIcon: Icons.account_circle_outlined,
        ),
        SizedBox(
          height: 5,
        ),
        TextInput(
          hintText: "Email",
          prefixIcon: Icons.email_outlined,
        ),
        SizedBox(
          height: 5,
        ),
        TextInput(
          hintText: "Phone number",
          prefixIcon: Icons.call_outlined,
        ),
        SizedBox(
          height: 5,
        ),
        TextInput(
          hintText: "Address",
          prefixIcon: Icons.location_on_outlined,
        ),
        SizedBox(
          height: 5,
        ),
        TextInput(
          hintText: "Zip code",
          prefixIcon: Icons.password_outlined,
        ),
        SizedBox(
          height: 5,
        ),
        TextInput(
          hintText: "City",
          prefixIcon: Icons.map_outlined,
        ),
        SizedBox(
          height: 5,
        ),
        TextInput(
          hintText: "Country",
          prefixIcon: Icons.language_outlined,
          suffixIcon: Icons.arrow_drop_down,
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
