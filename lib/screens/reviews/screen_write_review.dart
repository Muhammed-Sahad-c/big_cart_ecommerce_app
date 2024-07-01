import 'package:flutter/material.dart';
import 'package:myapp/screens/screen_products.dart';
import 'package:myapp/widgets/rating/star_rating_input.dart';
import 'package:myapp/widgets/review/write_review_textbox.dart';
import 'package:myapp/widgets/ui/buttons/primary_button.dart';

class ScreenWriteReview extends StatelessWidget {
  const ScreenWriteReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Write Reviews",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "What do you think ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "please give your rating by clicking on the stars below",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF868889),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    StarRatingInput(),
                    SizedBox(
                      height: 36,
                    ),
                    WriteReviewTextbox(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            PrimaryButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const ScreenProducts(),
                  ),
                );
              },
              label: "Start shopping",
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
