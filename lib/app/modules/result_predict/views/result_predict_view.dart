import 'package:breath_freely/shared/extensions/gaps.dart';
import 'package:breath_freely/shared/style/text_style.dart';
import 'package:breath_freely/shared/utils/screen.dart';
import 'package:breath_freely/shared/widgets/custom_button.dart';
import 'package:breath_freely/shared/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/result_predict_controller.dart';

class ResultPredictView extends GetView<ResultPredictController> {
  const ResultPredictView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ResultPredictController controller =
        Get.put(ResultPredictController());
    return CustomScaffold(
        useSafeArea: true,
        body: Padding(
          padding: EdgeInsets.all(30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hasil Prediksi",
                style: CustomTextStyle.bold.copyWith(fontSize: 24.sp),
              ),
              16.gH,
              Container(
                width: ScreenSize.w,
                padding: EdgeInsets.all(30.w),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    Text(
                      "Good",
                      style:
                          CustomTextStyle.extraBold.copyWith(fontSize: 24.sp),
                    ),
                    8.gH,
                    Text(
                        "Kondisi paru-paru dalam keadaan baik, tidak ada indikasi penyakit",
                        textAlign: TextAlign.center,
                        style: CustomTextStyle.semiBold),
                  ],
                ),
              ),
              16.gH,
              Text(
                "Saran dan Rekomendasi",
                style: CustomTextStyle.bold.copyWith(fontSize: 18.sp),
              ),
              16.gH,
              Container(
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
                              Icons.health_and_safety_rounded,
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
                              "Tetap Jaga Kesehatan dan Berolahraga",
                              style: CustomTextStyle.bold
                                  .copyWith(fontSize: 16.sp),
                            ),
                            0.gH,
                            Text(
                              "Harus tetap menjaga kesehatan dan berolahraga secara teratur untuk menjaga kondisi paru-paru tetap baik",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyle.regular
                                  .copyWith(fontSize: 12.sp),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              const Spacer(),
              CustomButton(
                  text: "Kembali Ke Home", onPressed: controller.backHome)
            ],
          ),
        ));
  }
}
