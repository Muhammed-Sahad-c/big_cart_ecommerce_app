import 'package:flutter/material.dart';
import 'package:myapp/widgets/ui/text_input.dart';

class ShippingAddressList extends StatelessWidget {
  const ShippingAddressList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextInput(
            hintText: "Name",
            prefixIcon: Icons.account_circle_outlined,
          ),
          SizedBox(
            height: 5,
          ),
          TextInput(
            hintText: "Email address",
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
            prefixIcon: Icons.card_travel_outlined,
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
          ),
        ],
      ),
    );
  }
}
