import 'package:breath_freely/app/modules/home/controllers/home_controller.dart';
import 'package:breath_freely/shared/extensions/gaps.dart';
import 'package:breath_freely/shared/style/text_style.dart';
import 'package:breath_freely/shared/utils/screen.dart';
import 'package:breath_freely/shared/widgets/custom_article_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({super.key});

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  final HomeController _homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.w,
      margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: ListView(
        children: [
          Text(
            "Hai, ${_homeController.userName()}",
            style: CustomTextStyle.bold.copyWith(fontSize: 24.sp),
          ),
          8.gH,
          Text(
            "Breath Freely",
            style: CustomTextStyle.semiBold,
          ),
          16.gH,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 100.w,
                  height: 100.w,
                  padding: EdgeInsets.all(15.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/ic_env.png',
                        width: 20.w,
                        height: 20.w,
                        color: Colors.blueAccent,
                      ),
                      Text(
                        "72",
                        style: CustomTextStyle.bold.copyWith(fontSize: 20.sp),
                      ),
                      0.gH,
                      Text(
                        "AQI Index",
                        style: CustomTextStyle.semiBold,
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 175.w,
                  height: 100.w,
                  padding: EdgeInsets.all(15.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/ic_health.png',
                        width: 20.w,
                        height: 20.w,
                        color: Colors.blueAccent,
                      ),
                      Text(
                        "Good",
                        style: CustomTextStyle.bold.copyWith(fontSize: 20.sp),
                      ),
                      0.gH,
                      Text(
                        "Last check 01/01/2024",
                        style:
                            CustomTextStyle.semiBold.copyWith(fontSize: 12.sp),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          16.gH,
          Text(
            "Lacak Kondisimu",
            style: CustomTextStyle.bold,
          ),
          16.gH,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: _homeController.onPredict,
                child: Container(
                  width: 175.w,
                  height: 100.w,
                  padding: EdgeInsets.all(15.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/ic_warn.png',
                        width: 20.w,
                        height: 20.w,
                        color: Colors.orange,
                      ),
                      Text(
                        "Never check",
                        style: CustomTextStyle.bold.copyWith(fontSize: 20.sp),
                      ),
                      0.gH,
                      Text(
                        "Periksa sekarang",
                        style:
                            CustomTextStyle.semiBold.copyWith(fontSize: 12.sp),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: _homeController.onHistory,
                child: Container(
                  width: 100.w,
                  height: 100.w,
                  padding: EdgeInsets.all(15.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/ic_history.png',
                        width: 20.w,
                        height: 20.w,
                        color: Colors.blueAccent,
                      ),
                      Text(
                        "Lihat",
                        style: CustomTextStyle.bold.copyWith(fontSize: 20.sp),
                      ),
                      0.gH,
                      Text(
                        "Riwayat",
                        style: CustomTextStyle.semiBold,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          16.gH,
          Container(
            width: ScreenSize.w * 0.9,
            height: 100.w,
            padding: EdgeInsets.all(15.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Monitoring",
                      style: CustomTextStyle.bold.copyWith(fontSize: 20.sp),
                    ),
                    0.gH,
                    Text(
                      "Ringkasan dan Pelacakan ",
                      style: CustomTextStyle.semiBold.copyWith(fontSize: 12.sp),
                    )
                  ],
                ),
                Image.asset(
                  'assets/icons/ic_monitor.png',
                  width: 50.w,
                  height: 50.w,
                  color: Colors.blueAccent,
                ),
              ],
            ),
          ),
          16.gH,
          Text(
            "Artikel dan Blog",
            style: CustomTextStyle.bold,
          ),
          16.gH,
          ...[1].map((e) => ArticleCard()).toList(),
          100.gH
        ],
      ),
    );
  }
}
