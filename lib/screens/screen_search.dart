import 'package:flutter/material.dart';
import 'package:myapp/widgets/search/search_discover.dart';
import 'package:myapp/widgets/search/search_history.dart';
import 'package:myapp/widgets/ui/app_search_bar.dart';
import 'package:myapp/widgets/ui/buttons/secondary_button.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          flexibleSpace: const Padding(
            padding: EdgeInsets.all(8.0),
            child: SafeArea(
              child: AppSearchBar(),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SearchHistory(),
              const SizedBox(
                height: 28,
              ),
              SearchDiscover(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(
          16,
        ),
        child: Row(
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: SecondaryButton(
                onPressed: () {},
                icon: Icons.camera_alt_outlined,
                label: "Image search",
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Flexible(
              fit: FlexFit.tight,
              child: SecondaryButton(
                onPressed: () {},
                icon: Icons.mic_outlined,
                label: "Voice search",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
