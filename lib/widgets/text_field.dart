import 'package:assignment_splash_login_signup/constants/colors.dart';
import 'package:flutter/material.dart';

Widget textField(
  BuildContext context, {
  required Icon prefixIcon,
  required String label,
  bool obscure = false,
  String? Function(String?)? validator,
  TextEditingController? controller,
      Widget? suffixIcon,
}) {
  return TextFormField(
    obscureText: obscure,
    validator: validator,
    controller: controller,
    decoration: InputDecoration(
      isDense: true,
      filled: true,
      fillColor: MyColors.textFieldColor,
      prefixIcon: prefixIcon,
      prefixIconColor: MyColors.baseColor,
      suffixIcon: suffixIcon,
      hintText: label,
      hintStyle: const TextStyle(color: MyColors.baseColor),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.transparent),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.red),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.red),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: MyColors.baseColor),
      ),
    ),
  );
}
