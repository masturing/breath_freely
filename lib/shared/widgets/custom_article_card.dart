import 'package:breath_freely/app/routes/app_pages.dart';
import 'package:breath_freely/shared/extensions/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../style/text_style.dart';
import '../utils/screen.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.ARTICLE_DETAIL);
      },
      child: Container(
          width: ScreenSize.w * 0.9,
          margin: EdgeInsets.only(bottom: 16.h),
          height: 80.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: [
              Container(
                  width: 80.w,
                  height: 80.w,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.masks_rounded,
                      color: Colors.white.withOpacity(0.5),
                      size: 60.w,
                    ),
                  )),
              16.gW,
              SizedBox(
                width: ScreenSize.w * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cara Menggunakan Masker dengan Benar",
                      style: CustomTextStyle.bold.copyWith(fontSize: 16.sp),
                    ),
                    0.gH,
                    Text(
                      "Masker adalah salah satu alat yang digunakan untuk menutupi hidung dan mulut agar tidak terpapar virus dan bakteri yang ada di udara.",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyle.regular.copyWith(fontSize: 12.sp),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
