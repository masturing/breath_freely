import 'package:get/get.dart';

import '../controllers/predict_controller.dart';

class PredictBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PredictController>(
      () => PredictController(),
    );
  }
}
