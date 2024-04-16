import 'dart:math';

import 'package:assignment_splash_login_signup/widgets/appBar_home.dart';
import 'package:flutter/material.dart';

import '../constants/textStyles.dart';
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
      body: Stack(
        children: [
          Positioned(
            left: 23,
            top: 15,
            child: Text(
              'Fresh Fruits',
              style: MyTextStyles.headingStyle1,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 120,
                        //foregroundDecoration: BoxDecoration(color: Colors.orange.withOpacity(.7)),
                        decoration: BoxDecoration(
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              model[index].img,
                              height: 90,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    model[index].title,
                                    style: MyTextStyles.headingStyle1,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.water_drop_outlined),
                                      Text(
                                        model[index].subTitle,
                                        style: MyTextStyles.subHeading,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                          left: 300,
                          top: 40,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: Icon(
                              Icons.water_drop_outlined,
                              color: Colors.grey,
                            ),
                          ))
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                if (index == 2) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Fri, February 7',
                      style: MyTextStyles.headingStyle1,
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              },
              itemCount: model.length,
            ),
          ),
        ],
      ),
    );
  }
}
