import 'package:assignment_splash_login_signup/screens/login_page.dart';
import 'package:assignment_splash_login_signup/screens/signup_page.dart';
import 'package:assignment_splash_login_signup/screens/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.cover,
          opacity: 0.5,
        )),
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
          child: Column(
            children: [
              text('The best     '),
              text('app for       '),
              text('your plants'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              buttons(context, label: 'Sign up', buttonColor: Colors.white,
                  onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LoginScreen(),
                  ),
                );
              }),
              const SizedBox(
                height: 20,
              ),
              buttons(context,
                  label: 'Login',
                  buttonColor: const Color(
                    0xFF476F57,
                  ),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SignUpScreen(),
                      ),
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget text(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 55, color: Color(0xFDFDFDFF)),
    );
  }
}
