import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/history_predict_controller.dart';

class HistoryPredictView extends GetView<HistoryPredictController> {
  const HistoryPredictView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HistoryPredictView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HistoryPredictView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
