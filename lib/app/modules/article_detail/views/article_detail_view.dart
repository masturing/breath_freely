import 'package:breath_freely/shared/extensions/gaps.dart';
import 'package:breath_freely/shared/style/text_style.dart';
import 'package:breath_freely/shared/utils/screen.dart';
import 'package:breath_freely/shared/widgets/custom_button.dart';
import 'package:breath_freely/shared/widgets/custom_parallax_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/article_detail_controller.dart';

class ArticleDetailView extends GetView<ArticleDetailController> {
  const ArticleDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ArticleDetailController controller =
        Get.put(ArticleDetailController());
    return Obx(
      () => Scaffold(
          backgroundColor: Colors.blue.shade50,
          body: NotificationListener(
            onNotification: (notif) {
              if (notif is ScrollUpdateNotification) {
                controller.topOne.value -= notif.scrollDelta! / 1;
                controller.topTwo.value -= notif.scrollDelta! / 1.2;
                controller.topThree.value -= notif.scrollDelta! / 1.2;
                controller.topFour.value -= notif.scrollDelta! / 1.2;
                controller.topFive.value -= notif.scrollDelta! / 1.8;
                controller.topSix.value -= notif.scrollDelta! / 1.6;
                controller.topSeven.value -= notif.scrollDelta! / 1.1;
              }
              return true;
            },
            child: Stack(
              children: [
                /// Paralax Background
                ParallaxBackground(
                    top: controller.topOne.value,
                    asset: 'assets/images/img_parralax_1.png'),
                ParallaxBackground(
                    top: controller.topTwo.value,
                    asset: 'assets/images/img_parralax_2.png'),
                ParallaxBackground(
                    top: controller.topThree.value,
                    asset: 'assets/images/img_parralax_3.png'),
                ParallaxBackground(
                    top: controller.topFour.value,
                    asset: 'assets/images/img_parralax_5.png'),
                ParallaxBackground(
                    top: controller.topFive.value,
                    asset: 'assets/images/img_parralax_6.png'),
                ParallaxBackground(
                    top: controller.topSix.value,
                    asset: 'assets/images/img_parralax_7.png'),
                ParallaxBackground(
                    top: controller.topSeven.value,
                    asset: 'assets/images/img_parralax_4.png'),
                SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    children: [
                      330.gH,
                      Container(
                          height: ScreenSize.h,
                          width: ScreenSize.w,
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          color: const Color(0xff78D8A4),
                          child: SafeArea(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Paru-Paru Sehat Hidup Berkualitas",
                                  style: CustomTextStyle.bold.copyWith(
                                      fontSize: 24.sp, color: Colors.black54),
                                ),
                                10.gH,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.create,
                                          color: Colors.black54,
                                        ),
                                        4.gW,
                                        Text("Dr. Izal M. Fadilah",
                                            style: CustomTextStyle.semiBold
                                                .copyWith(
                                                    color: Colors.black54,
                                                    fontSize: 15.sp))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.watch_later_rounded,
                                          color: Colors.black54,
                                        ),
                                        4.gW,
                                        Text("16 April 2023",
                                            style: CustomTextStyle.semiBold
                                                .copyWith(
                                                    color: Colors.black54,
                                                    fontSize: 15.sp))
                                      ],
                                    )
                                  ],
                                ),
                                24.gH,
                                Container(
                                  width: ScreenSize.w,
                                  padding: EdgeInsets.all(20.w),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(18)),
                                  child: Column(children: [
                                    Text(
                                      "Kesehatan paru-paru adalah fondasi penting bagi kualitas hidup yang optimal. Paru-paru yang sehat memastikan tubuh mendapatkan oksigen yang cukup, mendukung kegiatan sehari-hari, dan mengurangi risiko penyakit. Artikel ini akan membahas beberapa langkah sederhana untuk merawat paru-paru Anda dan meningkatkan kualitas hidup Anda secara keseluruhan\n\nDengan menerapkan langkah-langkah sederhana ini, Anda dapat menjaga kesehatan paru-paru dan meningkatkan kualitas hidup secara keseluruhan. Ingatlah bahwa paru-paru yang sehat adalah kunci untuk menikmati setiap momen hidup dengan lebih baik.",
                                      style: CustomTextStyle.medium
                                          .copyWith(fontSize: 14.sp),
                                    )
                                  ]),
                                ),
                                24.gH,
                                CustomButton(
                                    color: Color.fromARGB(255, 91, 164, 125),
                                    text: "Kembali",
                                    onPressed: controller.back)
                              ],
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
