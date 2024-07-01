import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/checkout/screen_payment_method.dart';
import 'package:myapp/widgets/checkout/shipping_address_list.dart';
import 'package:myapp/widgets/stepper/custom_step.dart';
import 'package:myapp/widgets/ui/buttons/primary_button.dart';

class ScreenShippingAddress extends StatelessWidget {
  const ScreenShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Shipping address",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
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
                      isCompleted: false,
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
                      isActive: false,
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
              const ShippingAddressList(),
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
                builder: (ctx) => const ScreenPaymentMethod(),
              ),
            );
          },
          label: "Next",
        ),
      ),
    );
  }
}
