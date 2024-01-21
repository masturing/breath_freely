import 'package:get/get.dart';

import '../controllers/aqi_map_controller.dart';

class AqiMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AqiMapController>(
      () => AqiMapController(),
    );
  }
}
