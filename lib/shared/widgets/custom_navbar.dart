// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:breath_freely/shared/extensions/gaps.dart';
import 'package:breath_freely/shared/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config.dart';

class CustomBottomNavbar extends StatelessWidget {
  final void Function(int)? onTap;
  final int? currentIndex;
  const CustomBottomNavbar({
    Key? key,
    this.onTap,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 30.w,
          left: MainConfig.kDefaultMargin,
          right: MainConfig.kDefaultMargin,
        ),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ItemNavbar(
              index: 0,
              currentIndex: currentIndex ?? 0,
              imageUrl: 'assets/icons/ic_home.png',
              text: "Home",
              onTap: () => onTap!(0),
            ),
            ItemNavbar(
              index: 1,
              currentIndex: currentIndex ?? 0,
              imageUrl: 'assets/icons/ic_predict.png',
              text: "Predict",
              onTap: () => onTap!(1),
            ),
            ItemNavbar(
              index: 2,
              currentIndex: currentIndex ?? 0,
              imageUrl: 'assets/icons/ic_person.png',
              text: "Profile",
              onTap: () => onTap!(2),
            )
          ],
        ),
      ),
    );
  }
}

class ItemNavbar extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String imageUrl;
  final String text;
  final Function() onTap;
  const ItemNavbar({
    Key? key,
    required this.index,
    required this.currentIndex,
    required this.imageUrl,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        width: 90,
        height: 65,
        decoration: BoxDecoration(
          color: (currentIndex == index) ? Colors.blueAccent : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            0.gH,
            Image.asset(
              imageUrl,
              width: 24,
              height: 24,
              color:
                  (currentIndex == index) ? Colors.white : Colors.grey.shade300,
            ),
            3.gH,
            Text(text,
                style: (currentIndex == index)
                    ? CustomTextStyle.bold
                        .copyWith(fontSize: 14, color: Colors.white)
                    : CustomTextStyle.semiBold
                        .copyWith(fontSize: 14, color: Colors.grey))
          ],
        ),
      ),
    );
  }
}
