import 'package:flutter/material.dart';
import 'package:myapp/widgets/account/transactions/transaction_card.dart';

class TransactionsList extends StatelessWidget {
  TransactionsList({super.key});

  final transactionsList = [
    {
      "name": "Master card",
      "iconPath": "assets/icons/transaction-icons/mastercard.svg",
      "amount": "89",
      "time": "Dec 12 2021 at 10:00 pm"
    },
    {
      "name": "Visa",
      "iconPath": "assets/icons/transaction-icons/visa.svg",
      "amount": "109",
      "time": "Dec 12 2021 at 10:00 pm"
    },
    {
      "name": "Paypal",
      "iconPath": "assets/icons/transaction-icons/paypal.svg",
      "amount": "567",
      "time": "Dec 12 2021 at 10:00 pm"
    },
    {
      "name": "Master card",
      "iconPath": "assets/icons/transaction-icons/mastercard.svg",
      "amount": "89",
      "time": "Dec 12 2021 at 10:00 pm"
    },
    {
      "name": "Visa",
      "iconPath": "assets/icons/transaction-icons/visa.svg",
      "amount": "109",
      "time": "Dec 12 2021 at 10:00 pm"
    },
    {
      "name": "Paypal",
      "iconPath": "assets/icons/transaction-icons/paypal.svg",
      "amount": "567",
      "time": "Dec 12 2021 at 10:00 pm"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return TransactionCard(
          name: transactionsList[index]["name"]!,
          iconPath: transactionsList[index]["iconPath"]!,
          amount: transactionsList[index]["amount"]!,
          time: transactionsList[index]["time"]!,
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
      itemCount: transactionsList.length,
    );
  }
}
