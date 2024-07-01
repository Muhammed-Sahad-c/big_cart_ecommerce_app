import 'package:flutter/material.dart';
import 'package:myapp/widgets/search/search_chip_list.dart';

class SearchHistory extends StatelessWidget {
  SearchHistory({super.key});

  final recentSearchItems = [
    "Fresh Grocery",
    "Bananas",
    "Cheetos",
    "Vegetables",
    "Fruits",
    "Discount Items",
    "Fresh Vegetables"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Search History",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              "Clear",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF407EC7),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SearchChipList(
          searchLists: recentSearchItems,
        ),
      ],
    );
  }
}
