import 'package:assignment_splash_login_signup/screens/login_page.dart';
import 'package:assignment_splash_login_signup/screens/widgets/buttons.dart';
import 'package:assignment_splash_login_signup/screens/widgets/text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/textStyles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  Text('Register', style: MyTextStyles.headingStyle),
                  Text(
                    'Create your new account',
                    style: MyTextStyles.subHeading,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: Column(
                      children: [
                        textField(context,
                            label: 'Full Name', prefixIcon: Icon(Icons.person)),
                        const SizedBox(
                          height: 20,
                        ),
                        textField(
                          context,
                          label: 'email address',
                          obscure: true,
                          prefixIcon: const Icon(Icons.lock),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        textField(
                          context,
                          label: 'password',
                          obscure: true,
                          prefixIcon: const Icon(Icons.lock),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        textField(
                          context,
                          label: 'confirm password',
                          obscure: true,
                          prefixIcon: const Icon(Icons.lock),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // Text(
                        //   'By signing you agree to our term of use and privacy notice',
                        //   style: TextStyle(color: MyColors.baseColor),
                        // ),

                        RichText(
                          text: TextSpan(
                            text: "By signing you agree to our ",
                            style: TextStyle(
                              color: MyColors.greyColor,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                text: 'Term of use \n '
                                    '              and privacy notice',
                                style: const TextStyle(
                                    color: MyColors.baseColor,
                                    fontSize: 16,
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const SignUpScreen(),
                                    ),
                                  ),
                              )
                            ],
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.15,
                        ),
                        buttons(context,
                            label: 'Sign up',
                            onPressed: () {},
                            buttonColor: MyColors.buttonColor,
                            textColor: Colors.white),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Already have an account?  ",
                            style: TextStyle(
                              color: MyColors.greyColor,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                text: 'login',
                                style: const TextStyle(
                                    color: MyColors.baseColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => const LoginScreen(),
                                        ),
                                      ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.12,
              left: MediaQuery.of(context).size.width * 0.75,
              child: SizedBox(
                width: 110,
                height: 110,
                child: Image.asset('assets/leaf1.png'),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.06,
                left: MediaQuery.of(context).size.height * 0.04,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: MyColors.textFieldColor),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new,
                          color: MyColors.baseColor)),
                ))
          ],
        ),
      ),
    );
  }
}
