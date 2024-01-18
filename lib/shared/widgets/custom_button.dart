// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:breath_freely/shared/style/text_style.dart';
import 'package:flutter/material.dart';

import '../utils/screen.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  final String text;
  final TextStyle? textStyle;
  final Function onPressed;
  const CustomButton({
    Key? key,
    this.width,
    this.height,
    this.color,
    required this.text,
    this.textStyle,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed as void Function()?,
      child: Container(
          width: width ?? ScreenSize.w,
          height: height ?? 50,
          decoration: BoxDecoration(
            color: color ?? Colors.blueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Text(
            text,
            style: textStyle ??
                CustomTextStyle.bold.copyWith(
                  fontSize: 18,
                  color: Colors.white,
                ),
          ))),
    );
  }
}
