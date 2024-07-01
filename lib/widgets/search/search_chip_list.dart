import 'package:flutter/material.dart';
import 'package:myapp/widgets/search/search_chip.dart';

class SearchChipList extends StatelessWidget {
  const SearchChipList({super.key, required this.searchLists});

  final List<String> searchLists; // Assuming the list contains strings

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: searchLists.map((item) {
        return SearchChip(
          chipLabel: item,
        );
      }).toList(),
    );
  }
}
