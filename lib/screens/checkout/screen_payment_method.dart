import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/screens/checkout/screen_order_successfull.dart';
import 'package:myapp/widgets/checkout/card_details_form.dart';
import 'package:myapp/widgets/checkout/payment_method_cards.dart';
import 'package:myapp/widgets/stepper/custom_step.dart';
import 'package:myapp/widgets/ui/buttons/primary_button.dart';
import 'package:easy_stepper/easy_stepper.dart';

class ScreenPaymentMethod extends StatelessWidget {
  const ScreenPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Payment method",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              EasyStepper(
                activeStep: 1,
                activeStepTextColor: Colors.black87,
                finishedStepTextColor: Colors.black87,
                internalPadding: 0,
                showLoadingAnimation: false,
                stepRadius: 20,
                showStepBorder: false,
                steppingEnabled: false,
                steps: const [
                  EasyStep(
                    customStep: CustomStep(
                      isActive: true,
                      isCompleted: true,
                      stepNo: 1,
                    ),
                    customTitle: Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "Delivery",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF868889),
                        ),
                      ),
                    ),
                  ),
                  EasyStep(
                    customStep: CustomStep(
                      isActive: true,
                      isCompleted: true,
                      stepNo: 2,
                    ),
                    customTitle: Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "Address",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF868889),
                        ),
                      ),
                    ),
                  ),
                  EasyStep(
                    customStep: CustomStep(
                      isActive: true,
                      isCompleted: false,
                      stepNo: 3,
                    ),
                    customTitle: Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "Payment",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF868889),
                        ),
                      ),
                    ),
                  ),
                ],
                onStepReached: (index) {},
              ),
              const SizedBox(
                height: 16,
              ),
              const PaymentMethodCards(),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: SvgPicture.asset(
                  'assets/images/card.svg',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const CardDetailsForm(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: PrimaryButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const ScreenOrderSuccessfull(),
              ),
            );
          },
          label: "Make a payment",
        ),
      ),
    );
  }
}
