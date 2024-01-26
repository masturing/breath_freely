import 'package:breath_freely/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  RxInt currentIndex = 0.obs;

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

  void onTap(int index) {
    if (index == 1) {
      Get.toNamed(Routes.PREDICT);
    } else {
      currentIndex.value = index;
      ;
    }
  }

  void onLogOut() {
    Get.offAllNamed(Routes.AUTH_SCREEN);
  }
}
