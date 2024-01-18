import 'package:breath_freely/app/routes/app_pages.dart';
import 'package:get/get.dart';

class PredictController extends GetxController {
  //TODO: Implement PredictController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void startPrediction() {
    Get.offNamed(Routes.RESULT_PREDICT);
  }
}
