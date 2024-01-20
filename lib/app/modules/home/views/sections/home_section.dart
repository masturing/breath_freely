import 'package:breath_freely/shared/extensions/gaps.dart';
import 'package:breath_freely/shared/style/text_style.dart';
import 'package:breath_freely/shared/utils/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({super.key});

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.w,
      margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: ListView(
        children: [
          Text(
            "Hai, Selamat Datang",
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
              Container(
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
              Container(
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
                      style: CustomTextStyle.semiBold.copyWith(fontSize: 12.sp),
                    )
                  ],
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
              Container(
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
                      style: CustomTextStyle.semiBold.copyWith(fontSize: 12.sp),
                    )
                  ],
                ),
              ),
              Container(
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
          ...[1]
              .map((e) => Container(
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
                              style: CustomTextStyle.bold
                                  .copyWith(fontSize: 16.sp),
                            ),
                            0.gH,
                            Text(
                              "Masker adalah salah satu alat yang digunakan untuk menutupi hidung dan mulut agar tidak terpapar virus dan bakteri yang ada di udara.",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyle.regular
                                  .copyWith(fontSize: 12.sp),
                            )
                          ],
                        ),
                      )
                    ],
                  )))
              .toList(),
          100.gH
        ],
      ),
    );
  }
}
