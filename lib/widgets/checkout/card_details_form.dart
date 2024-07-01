import 'package:flutter/material.dart';
import 'package:myapp/widgets/ui/text_input.dart';

class CardDetailsForm extends StatelessWidget {
  const CardDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return //? Card Details Form Starts -------------------------------------
        const Form(
      child: Column(
        children: [
          TextInput(
            hintText: "Name of the card",
          ),
          SizedBox(
            height: 5,
          ),
          TextInput(hintText: "Card number"),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: TextInput(
                  hintText: "Month",
                  prefixIcon: Icons.calendar_month_outlined,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextInput(
                  hintText: "CVV",
                  prefixIcon: Icons.lock_outline,
                ),
              ),
            ],
          )
        ],
      ),
    );
    //? Card Details Form Ends -------------------------------------
  }
}
