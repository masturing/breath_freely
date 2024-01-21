// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ParallaxBackground extends StatelessWidget {
  final double? top;
  final String asset;
  const ParallaxBackground({
    Key? key,
    this.top,
    required this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: 0,
        right: 0,
        child: SizedBox(
            height: 350,
            child: Image.asset(
              asset,
              fit: BoxFit.cover,
            )));
  }
}
