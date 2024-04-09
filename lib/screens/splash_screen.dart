import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.cover,
          opacity: 0.7,
        )),
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.25),
          child: Column(
            children: [
              text('The best     '),
              text('app for       '),
              text('your plants'),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              buttons(context, label:'Sign up'),
              buttons(context, label:'Login')
            ],
          ),
        ),
      ),
    );
  }

  Widget text(String text) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 55, color: Color(0xFDFDFDFF)),
    );
  }

  Widget buttons(BuildContext context, {required String label}) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: MaterialButton(
        onPressed: () {},
        shape: StadiumBorder(),
        color: Colors.white,
        height: 40,
        child: Text(label, style: TextStyle(color: Color(
            0xFF476F57), fontSize: 18),),
      ),
    );
  }
  }

