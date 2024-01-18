import 'package:breath_freely/shared/extensions/gaps.dart';
import 'package:breath_freely/shared/style/text_style.dart';
import 'package:breath_freely/shared/utils/screen.dart';
import 'package:breath_freely/shared/widgets/custom_form.dart';
import 'package:breath_freely/shared/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/auth_screen_controller.dart';

class AuthScreenView extends GetView<AuthScreenController> {
  const AuthScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final AuthScreenController controller = Get.put(AuthScreenController());
    return Obx(
      () => CustomScaffold(
          bgImg: 'assets/images/img_bg.png',
          useSafeArea: false,
          body: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: ScreenSize.w * 0.2,
                        height: ScreenSize.w * 0.2,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/ic_logo.png'),
                          ),
                        ),
                      ),
                      8.gH,
                      Text(
                        controller.titleText.value,
                        style:
                            CustomTextStyle.extraBold.copyWith(fontSize: 24.sp),
                      ),
                      24.gH,
                      Container(
                        width: ScreenSize.w * 0.9,
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            CustomForm(
                                text: controller.titleText.value,
                                onPressed: controller.proceedAuth,
                                textStyle: CustomTextStyle.semiBold.copyWith(
                                  fontSize: 14.sp,
                                ),
                                isObscureText: controller.isObscureText.value,
                                onObscurePressed: controller.toggleObscureText,
                                fields: controller.selectedFields.value),
                            TextButton(
                                onPressed: controller.toggleSwitchAuth,
                                child: Text(
                                  controller.switchText.value,
                                  style: CustomTextStyle.regular,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
