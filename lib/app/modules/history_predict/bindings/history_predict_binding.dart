import 'package:get/get.dart';

import '../controllers/history_predict_controller.dart';

class HistoryPredictBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HistoryPredictController>(
      () => HistoryPredictController(),
    );
  }
}
