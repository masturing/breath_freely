import 'package:breath_freely/configs/form_config.dart';
import 'package:breath_freely/shared/extensions/gaps.dart';
import 'package:breath_freely/shared/style/text_style.dart';
import 'package:breath_freely/shared/widgets/custom_form.dart';
import 'package:breath_freely/shared/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/predict_controller.dart';

class PredictView extends GetView<PredictController> {
  const PredictView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final PredictController controller = Get.put(PredictController());
    return CustomScaffold(
        useSafeArea: true,
        body: Padding(
          padding: EdgeInsets.all(30.w),
          child: ListView(
            children: [
              Text(
                "Prediksi",
                style: CustomTextStyle.bold.copyWith(fontSize: 20.sp),
              ),
              Text(
                "Selasa, 12 Januari 2024",
                style: CustomTextStyle.medium,
              ),
              CustomForm(
                  padding: 0,
                  text: 'Mulai Prediksi',
                  onPressed: controller.startPrediction,
                  fields: predictionForm)
            ],
          ),
        ));
  }
}
