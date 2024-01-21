import 'package:get/get.dart';

class ArticleDetailController extends GetxController {
  //TODO: Implement ArticleDetailController
  RxDouble topOne = 0.0.obs;
  RxDouble topTwo = 0.0.obs;
  RxDouble topThree = 0.0.obs;
  RxDouble topFour = 0.0.obs;
  RxDouble topFive = 0.0.obs;
  RxDouble topSix = 0.0.obs;
  RxDouble topSeven = 0.0.obs;

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

  void back() {
    Get.back();
  }

  void increment() => count.value++;
}
