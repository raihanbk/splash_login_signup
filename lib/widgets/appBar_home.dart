import 'package:flutter/material.dart';

PreferredSizeWidget appBar() {
  return AppBar(
    leading: const Padding(
      padding: EdgeInsets.only(left: 18.0, top: 10),
      child: Icon(Icons.settings_outlined,color: Colors.grey,size: 30,),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 18.0, top: 10),
        child: CircleAvatar(backgroundColor: Color(0xFF88AEBA),child: Icon(Icons.add, color: Colors.white,)),
      )
    ],
  );
}