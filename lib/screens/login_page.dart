import 'package:assignment_splash_login_signup/constants/colors.dart';
import 'package:assignment_splash_login_signup/constants/textStyles.dart';
import 'package:assignment_splash_login_signup/screens/signup_page.dart';
import 'package:assignment_splash_login_signup/widgets/buttons.dart';
import 'package:assignment_splash_login_signup/widgets/text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool isVisible = true;

  var formKey = GlobalKey<FormState>();
  var email = 'abc';
  var pass = 'abc';

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
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.40,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.elliptical(550, 75),
                            bottomLeft: Radius.circular(0),
                          ),
                          image: DecorationImage(
                              opacity: 0.6,
                              image: AssetImage('assets/bg.png'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text('Welcome back', style: MyTextStyles.headingStyle),
                    Text(
                      'Login to your account',
                      style: MyTextStyles.subHeading,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Column(
                        children: [
                          textField(context,
                              controller: emailController,
                              label: 'email', validator: (val) {
                            if (val!.isEmpty || val != 'abc') {
                              return 'invalid email';
                            }
                            return null;
                          }, prefixIcon: const Icon(Icons.person)),
                          const SizedBox(
                            height: 20,
                          ),
                          textField(
                            context,
                            label: 'password',
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              icon: isVisible
                                  ? const Icon(
                                      Icons.visibility,
                                      color: MyColors.baseColor,
                                    )
                                  : const Icon(
                                      Icons.visibility_off,
                                      color: MyColors.baseColor,
                                    ),
                            ),
                            validator: (val) {
                              if (val!.isEmpty || val != 'abc') {
                                return 'invalid password';
                              }
                              return null;
                            },
                            controller: passController,
                            obscure: isVisible,
                            prefixIcon: const Icon(Icons.lock),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                side: const BorderSide(),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                value: rememberMe,
                                activeColor: MyColors.baseColor,
                                onChanged: (value) {
                                  setState(() {
                                    rememberMe = value!;
                                  });
                                },
                              ),
                              const Text(
                                'Remember me',
                                style: TextStyle(color: MyColors.baseColor),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.23,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forget password',
                                  style: TextStyle(color: MyColors.baseColor),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.10,
                          ),
                          buttons(context, label: 'Login', onPressed: () {
                            var valid = formKey.currentState!.validate();
                            if (valid == true) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Text("Login failed"),
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
                              text: "Don't have an account? ",
                              style: TextStyle(
                                color: MyColors.greyColor,
                                fontSize: 16,
                              ),
                              children: [
                                TextSpan(
                                  text: 'sign up',
                                  style: const TextStyle(
                                      color: MyColors.baseColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      decoration: TextDecoration.underline),
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
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.44,
              left: MediaQuery.of(context).size.width * 0.80,
              child: SizedBox(
                width: 110,
                height: 110,
                child: Image.asset('assets/leaf1.png'),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.04,
              left: MediaQuery.of(context).size.height * 0.04,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white70),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new,
                        color: MyColors.baseColor)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
