import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryPredictController extends GetxController {
  //TODO: Implement HistoryPredictController
  late PageController pageController;
  RxInt selectedIndex = 0.obs;

  final count = 0.obs;
  @override
  void onInit() {
    pageController = PageController(viewportFraction: 0.8);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
