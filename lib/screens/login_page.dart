import 'package:assignment_splash_login_signup/constants/colors.dart';
import 'package:assignment_splash_login_signup/constants/textStyles.dart';
import 'package:assignment_splash_login_signup/screens/widgets/buttons.dart';
import 'package:assignment_splash_login_signup/screens/widgets/text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool val = false;

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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.40,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.elliptical(350, 75),
                          bottomLeft: Radius.elliptical(55, 35),
                        ),
                        image: DecorationImage(
                            opacity: 0.7,
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
                            label: 'Full Name', prefixIcon: Icon(Icons.person)),
                        const SizedBox(
                          height: 20,
                        ),
                        textField(
                          context,
                          label: 'password',
                          obscure: true,
                          prefixIcon: const Icon(Icons.lock),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              side: const BorderSide(),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              value: val,
                              onChanged: (value) {
                                setState(() {
                                  val = true;
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
                        SizedBox(height: MediaQuery.of(context).size.width * 0.15,),
                        buttons(context,
                            label: 'Login',
                            onPressed: () {},
                            buttonColor: MyColors.baseColor,
                            textColor: Colors.white)
                      ],
                    ),
                  ),
                ],
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
            )
          ],
        ),
      ),
    );
  }
}
