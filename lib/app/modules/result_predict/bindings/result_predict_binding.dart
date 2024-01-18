import 'package:get/get.dart';

import '../controllers/result_predict_controller.dart';

class ResultPredictBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResultPredictController>(
      () => ResultPredictController(),
    );
  }
}
