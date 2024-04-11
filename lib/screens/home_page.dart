import 'dart:math';

import 'package:assignment_splash_login_signup/widgets/appBar_home.dart';
import 'package:flutter/material.dart';

import '../model/home_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<HomeModel> model = homeModel
      .map((e) => HomeModel(
            img: e['img'],
            title: e['title'],
            subTitle: e['subtitle'],
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
        body: Container(
          margin: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: const BoxDecoration(
            color: Colors.lightGreen
          ),
          child: ListView(
                children: List.generate(
          model.length,
          (index) => ListTile(
              title: Text(model[index].title),
              subtitle: Text(model[index].subTitle)),
                ),
              ),
        ));
  }
}
