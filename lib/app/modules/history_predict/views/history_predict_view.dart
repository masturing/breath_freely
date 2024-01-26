import 'package:breath_freely/config.dart';
import 'package:breath_freely/shared/style/text_style.dart';
import 'package:breath_freely/shared/utils/screen.dart';
import 'package:breath_freely/shared/widgets/custom_card_parallax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/history_predict_controller.dart';

class HistoryPredictView extends GetView<HistoryPredictController> {
  const HistoryPredictView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final HistoryPredictController controller =
        Get.put(HistoryPredictController());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Disease History',
            style: CustomTextStyle.bold.copyWith(fontSize: 22.sp),
          ),
          centerTitle: false,
        ),
        body: SizedBox(
          height: ScreenSize.h * 0.7,
          child: PageView.builder(
              controller: controller.pageController,
              itemCount: MainConfig.backgroundImages.length,
              onPageChanged: (value) => controller.selectedIndex.value = value,
              itemBuilder: (context, index) {
                return Obx(() => CardParallax(
                    title: 'Lung Disease',
                    description:
                        'There is a droplet infection in the lungs that dangerous',
                    status: 'Danger',
                    date: '01-10-2021',
                    isSelected: controller.selectedIndex.value == index,
                    assetImage: MainConfig.backgroundImages[index]));
              }),
        ));
  }
}
