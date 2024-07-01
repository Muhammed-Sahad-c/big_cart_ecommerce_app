import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/screens/auth/screen_login.dart';
import 'package:myapp/screens/auth/screen_signup.dart';
import 'package:myapp/widgets/auth/auth_cover_image.dart';
import 'package:myapp/widgets/ui/buttons/primary_button.dart';

class ScreenWelcome extends StatelessWidget {
  const ScreenWelcome({super.key});

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
            imagePath: 'assets/images/auth-bg-images/welcome_bg.png',
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
                      "Welcome",
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
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy",
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
                    Column(
                      children: [
                        //? Signup With Google Button Starts -------------------------------------
                        SizedBox(
                          width: double.infinity,
                          height: 60.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.all(16),
                              shape: const ContinuousRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16.0),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/social-media-icons/google.svg',
                                  width: 22,
                                  height: 22,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                const Text(
                                  "Continue with google",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //? Signup With Google Button Ends -------------------------------------
                        const SizedBox(
                          height: 12,
                        ),
                        //? Signup With Email Button Starts -------------------------------------
                        PrimaryButton(
                          label: "Create an account",
                          icon: Icons.account_circle_outlined,
                          alignment: Alignment.centerLeft,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ScreenSignup(),
                              ),
                            );
                          },
                        ),
                        //? Signup With Email Button Ends -------------------------------------
                      ],
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
