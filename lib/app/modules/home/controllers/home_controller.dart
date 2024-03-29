import 'package:breath_freely/app/domain/repositories/implementation/aqi_repository.dart';
import 'package:breath_freely/app/domain/repositories/implementation/health_record_repository.dart';
import 'package:breath_freely/app/domain/repositories/implementation/user_repository.dart';
import 'package:breath_freely/app/routes/app_pages.dart';
import 'package:breath_freely/config.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  RxInt currentIndex = 0.obs;
  RxInt aqi = 0.obs;

  @override
  void onInit() {
    getAQI();
    getHealthRecord();
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

  // VOID FUNCTION

  void onHistory() {
    Get.toNamed(Routes.HISTORY_PREDICT);
  }

  void onPredict() {
    Get.toNamed(Routes.PREDICT);
  }

  void onLogOut() {
    UserRepository().logout();
  }

  void onTap(int index) {
    if (index == 1) {
      onPredict();
    } else {
      currentIndex.value = index;
    }
  }

  // RETURN FUNCTION

  String userName() {
    return UserRepository().getUserAttr('fullname');
  }

  void getAQI() async {
    try {
      int result = await AQIRepository().getAQI(city: "Semarang");
      aqi.value = result;
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  void getHealthRecord() async {
    try {
      final res = await HealthRecordRepository()
          .getHealthRecordDashboard(id: MainConfig.storage.read('id'));
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
