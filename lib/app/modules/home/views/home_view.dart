import 'package:breath_freely/app/modules/home/views/sections/home_section.dart';
import 'package:breath_freely/app/modules/home/views/sections/profile_section.dart';
import 'package:breath_freely/shared/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Obx(
      () => CustomScaffold(
          useSafeArea: true,
          bgColor: const Color.fromARGB(255, 243, 249, 255),
          withNavbar: true,
          currentIndex: controller.currentIndex.value,
          onTap: controller.onTap,
          body: switch (controller.currentIndex.value) {
            0 => HomeSection(),
            2 => ProfileSection(),
            int() => Container(),
          }),
    );
  }
}
