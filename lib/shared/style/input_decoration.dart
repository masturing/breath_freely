import 'package:breath_freely/shared/style/text_style.dart';
import 'package:flutter/material.dart';

class CustomInputDecoration {
  static InputDecoration passwordText(
      String? hint, bool isObscure, Function()? onPressed) {
    return InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
            color: Colors.grey, width: 1.0, style: BorderStyle.solid),
      ),
      hintStyle:
          CustomTextStyle.regular.copyWith(fontSize: 14, color: Colors.grey),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
            color: Colors.grey, width: 1.0, style: BorderStyle.solid),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
            color: Colors.blueAccent, width: 1.0, style: BorderStyle.solid),
      ),
      suffixIcon: IconButton(
        icon: Icon(
          isObscure ? Icons.visibility : Icons.visibility_off,
        ),
        color: Colors.grey,
        onPressed: onPressed,
      ),
      suffixIconConstraints: const BoxConstraints(minWidth: 70),
      prefixIcon: Icon(
        Icons.fingerprint_rounded,
        color: Colors.blueAccent,
      ),
      prefixIconConstraints: const BoxConstraints(
        minWidth: 70,
      ),
      focusColor: Colors.blueAccent,
    );
  }

  static InputDecoration commonInput(String hint, IconData icon,
      {bool? isUsedIcon = true, double? radius}) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius ?? 15),
        borderSide: BorderSide(
            color: Colors.grey, width: 1.0, style: BorderStyle.solid),
      ),
      hintText: hint,
      hintStyle:
          CustomTextStyle.regular.copyWith(fontSize: 14, color: Colors.grey),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius ?? 15),
        borderSide: BorderSide(
            color: Colors.grey, width: 1.0, style: BorderStyle.solid),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius ?? 15),
        borderSide: BorderSide(
            color: Colors.blueAccent, width: 1.0, style: BorderStyle.solid),
      ),
      prefixIcon: isUsedIcon!
          ? Icon(
              icon,
              color: Colors.blueAccent,
            )
          : null,
      prefixIconConstraints: const BoxConstraints(
        minWidth: 70,
      ),
      focusColor: Colors.blueAccent,
    );
  }
}
