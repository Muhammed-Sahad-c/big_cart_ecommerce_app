import 'package:flutter/material.dart';
import 'package:myapp/widgets/account/new_address_form.dart';
import 'package:myapp/widgets/ui/buttons/primary_button.dart';

class ScreenAddAddress extends StatelessWidget {
  const ScreenAddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Add address",
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
          child: NewAddressForm(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: PrimaryButton(onPressed: () {}, label: "Save address"),
      ),
    );
  }
}
