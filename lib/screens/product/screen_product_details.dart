import 'package:flutter/material.dart';
import 'package:myapp/screens/screen_cart.dart';
import 'package:myapp/widgets/product-details/details_section.dart';
import 'package:myapp/widgets/product-details/image_section.dart';
import 'package:myapp/widgets/product-details/quantity_card.dart';
import 'package:myapp/widgets/ui/buttons/primary_button.dart';

class ScreenProductDetails extends StatelessWidget {
  const ScreenProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    double imageSectionHeight = screenHeight / (1 + 1.618);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ImageSection(
              containerHeight: imageSectionHeight,
            ),
            const SizedBox(
              height: 16,
            ),
            const DetailsSection(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const QuantityCard(),
            const SizedBox(
              height: 8,
            ),
            PrimaryButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const ScreenCart(),
                  ),
                );
              },
              label: "Add to cart",
              icon: Icons.shopping_bag_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
