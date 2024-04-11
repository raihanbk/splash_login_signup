import 'package:flutter/material.dart';

List<Map<String, dynamic>> homeModel = [
  {
    'img': '',
    'title': 'Apple',
    'subtitle': '250 ml',
  },
  {
    'img': '',
    'title': 'Orange',
    'subtitle': '500 ml',
  },
  {
    'img': '',
    'title': 'PineApple',
    'subtitle': '450 ml',
  },
  {
    'img': '',
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
