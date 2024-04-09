import 'dart:ffi';

import 'package:assignment_splash_login_signup/constants/colors.dart';
import 'package:flutter/material.dart';

Widget textField(BuildContext context,
    {required Icon prefixIcon, required String label, bool obscure = false}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: MyColors.textFieldColor,
    ),
    child: TextFormField(
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixIconColor: MyColors.baseColor,
        label: Text(
          label,
          style: const TextStyle(color: MyColors.baseColor, fontSize: 15),
        ),
        enabledBorder: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: MyColors.baseColor),
        ),
      ),
    ),
  );
}
