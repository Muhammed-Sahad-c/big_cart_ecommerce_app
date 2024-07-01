import 'package:flutter/material.dart';
import 'package:myapp/screens/auth/screen_login.dart';
import 'package:myapp/screens/screeen_main.dart';
import 'package:myapp/widgets/auth/auth_cover_image.dart';
import 'package:myapp/widgets/ui/buttons/primary_button.dart';
import 'package:myapp/widgets/ui/text_input.dart';

class ScreenSignup extends StatelessWidget {
  const ScreenSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Welcome",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          const AuthCoverImage(
            imagePath: 'assets/images/auth-bg-images/signup_bg.png',
          ),
          //? Login Form body starts -------------------------------------
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 32,
                ),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFF4F5F9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Create account",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    const Text(
                      "Quickly create account",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF868889),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    //? Login Form starts -------------------------------------
                    Form(
                      child: Column(
                        children: [
                          const TextInput(
                            hintText: "Email address",
                            prefixIcon: Icons.email_outlined,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const TextInput(
                            hintText: "Password",
                            prefixIcon: Icons.lock_outline,
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          PrimaryButton(
                            label: "Signup",
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ScreenMain(),
                                ),
                                (route) => false,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    //? Login Form ends -------------------------------------
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 4,
                        runSpacing: 4,
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF868889),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ScreenLogin(),
                                ),
                              );
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //? Login Form body ends -------------------------------------
        ],
      ),
    );
  }
}
