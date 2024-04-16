import 'package:flutter/material.dart';

List<Map<String, dynamic>> homeModel = [
  {
    'img': 'assets/apple.png',
    'title': 'Apple',
    'subtitle': '250 ml',
  },
  {
    'img': 'assets/orange.png',
    'title': 'Orange',
    'subtitle': '500 ml',
  },
  {
    'img': 'assets/pineApple.png',
    'title': 'PineApple',
    'subtitle': '450 ml',
  },
  {
    'img': 'assets/banana.png',
    'title': 'Banana',
    'subtitle': '480 ml',
  }
];

class HomeModel {
  String img;
  String title;
  String subTitle;

  HomeModel({
    required this.img,
    required this.title,
    required this.subTitle,
  });
}
