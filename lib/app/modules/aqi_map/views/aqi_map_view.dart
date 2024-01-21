import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/aqi_map_controller.dart';

class AqiMapView extends GetView<AqiMapController> {
  const AqiMapView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AqiMapView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AqiMapView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
