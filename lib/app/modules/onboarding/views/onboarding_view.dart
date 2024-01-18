import 'package:breath_freely/shared/extensions/gaps.dart';
import 'package:breath_freely/shared/style/text_style.dart';
import 'package:breath_freely/shared/utils/screen.dart';
import 'package:breath_freely/shared/widgets/custom_button.dart';
import 'package:breath_freely/shared/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());
    return CustomScaffold(
      bgImg: 'assets/images/img_bg.png',
      useSafeArea: false,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
                width: ScreenSize.w * 0.45,
                height: ScreenSize.w * 0.45,
                margin: const EdgeInsets.only(bottom: 200),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/ic_logo.png'),
                  ),
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: ScreenSize.w,
              height: ScreenSize.h * 0.35,
              padding: const EdgeInsets.all(25),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "Breath Freely",
                    style: CustomTextStyle.bold.copyWith(fontSize: 24.sp),
                  ),
                  10.gH,
                  Text(
                    "Smart app for instant monitoring and predicting your lung health",
                    style: CustomTextStyle.regular.copyWith(fontSize: 18.sp),
                    textAlign: TextAlign.center,
                  ),
                  32.gH,
                  CustomButton(
                      text: "Lanjutkan", onPressed: () => controller.toAuth())
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
