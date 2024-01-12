import 'package:breath_freely/shared/utils/screen.dart';
import 'package:breath_freely/shared/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      useSafeArea: true,
      body: Center(
        child: Container(
            width: ScreenSize.w * 0.4,
            height: ScreenSize.w * 0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/ic_logo.png'),
              ),
            )),
      ),
    );
  }
}
