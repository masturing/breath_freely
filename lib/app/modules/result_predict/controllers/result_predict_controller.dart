import 'package:breath_freely/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ResultPredictController extends GetxController {
  //TODO: Implement ResultPredictController

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

  void backHome() {
    Get.offAllNamed(Routes.HOME);
  }
}
