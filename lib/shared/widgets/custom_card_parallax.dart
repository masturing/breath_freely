// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:breath_freely/shared/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:breath_freely/shared/utils/parallax_flow.dart';

class CardParallax extends StatefulWidget {
  final String assetImage;
  final bool isSelected;
  final String title;
  final String description;
  final String status;
  final String date;

  const CardParallax({
    Key? key,
    required this.assetImage,
    required this.isSelected,
    required this.title,
    required this.description,
    required this.status,
    required this.date,
  }) : super(key: key);

  @override
  State<CardParallax> createState() => _CardParallaxState();
}

class _CardParallaxState extends State<CardParallax> {
  final GlobalKey backgroundImageKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
      margin: widget.isSelected
          ? EdgeInsets.symmetric(vertical: 16.w, horizontal: 4.w)
          : EdgeInsets.symmetric(vertical: 32.w, horizontal: 16.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.w),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 6),
            )
          ]),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.w),
          child: Flow(
            delegate: ParallaxFlowDelegate(
                scrollable: Scrollable.of(context),
                listItemContext: context,
                backgroundImageKey: backgroundImageKey),
            children: [
              Container(
                key: backgroundImageKey,
                child: Image.asset(
                  widget.assetImage,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 30.w,
          left: 30.w,
          child: Text(
            "data",
            style: CustomTextStyle.bold,
          ),
        ),
      ]),
    );
  }
}
