import 'dart:math';

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
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0, top: 10),
          child: Icon(Icons.settings_outlined,color: Colors.grey,size: 30,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0, top: 10),
            child: CircleAvatar(backgroundColor: Color(0xFF88AEBA),child: Icon(Icons.add)),
          )
        ],
      ),
        body: Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
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
