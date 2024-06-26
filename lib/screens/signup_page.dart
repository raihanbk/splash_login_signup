import 'package:assignment_splash_login_signup/screens/login_page.dart';
import 'package:assignment_splash_login_signup/widgets/buttons.dart';
import 'package:assignment_splash_login_signup/widgets/text_field.dart';
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
  var formKey = GlobalKey<FormState>();
  bool isPassVisible = true;
  bool iscPassVisible = true;
  TextEditingController passController = TextEditingController();

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
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          textField(
                            context,
                            validator: (name) {
                              if (name!.isEmpty) {
                                return 'Please enter a username';
                              }
                              return null;
                            },
                            label: 'Full Name',
                            prefixIcon: const Icon(Icons.person),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          textField(
                            context,
                            validator: (email) {
                              if (email!.isEmpty || !email.contains('@')) {
                                return 'Enter an email address';
                              }
                              return null;
                            },
                            label: 'email address',
                            prefixIcon: const Icon(Icons.lock),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          textField(
                            context,
                            controller: passController,
                            validator: (pass) {
                              if (pass!.isEmpty || pass.length < 6) {
                                return 'Enter a password/ length should >6';
                              }
                              return null;
                            },
                            label: 'password',
                            obscure: isPassVisible,
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isPassVisible = !isPassVisible;
                                });
                              },
                              icon: isPassVisible
                                  ? Icon(Icons.visibility, color: MyColors.baseColor)
                                  : Icon(Icons.visibility_off, color: MyColors.baseColor),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          textField(
                            context,
                            validator: (cPass) {
                              if (cPass!.isEmpty ||
                                  cPass != passController.text) {
                                return 'Re-enter your password';
                              }
                              return null;
                            },
                            label: 'confirm password',
                            obscure: iscPassVisible,
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  iscPassVisible = !iscPassVisible;
                                });
                              },
                              icon: iscPassVisible
                                  ? Icon(Icons.visibility, color: MyColors.baseColor)
                                  : Icon(Icons.visibility_off, color: MyColors.baseColor),
                            ),
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
                                            builder: (_) =>
                                                const SignUpScreen(),
                                          ),
                                        ),
                                )
                              ],
                            ),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.15,
                          ),
                          buttons(context, label: 'Sign up', onPressed: () {
                            var valid = formKey.currentState!.validate();
                            if (valid == true) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.green,
                                  content: Text("Registration success"),
                                ),
                              );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const LoginScreen(),
                                ),
                              );
                            }
                          },
                              buttonColor: MyColors.buttonColor,
                              textColor: Colors.white),
                          const SizedBox(
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
