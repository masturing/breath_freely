import 'package:breath_freely/shared/extensions/gaps.dart';
import 'package:breath_freely/shared/style/text_style.dart';
import 'package:breath_freely/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../shared/utils/screen.dart';
import '../../controllers/home_controller.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({super.key});

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Container(
      width: ScreenSize.w,
      margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                width: 70.w,
                height: 70.w,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              12.gW,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Albus Severus Potter",
                    style: CustomTextStyle.bold.copyWith(fontSize: 18.sp),
                  ),
                  6.gH,
                  Text(
                    "Free Personal Account",
                    style: CustomTextStyle.medium.copyWith(fontSize: 14.sp),
                  )
                ],
              )
            ],
          ),
          16.gH,
          Container(
            width: ScreenSize.w,
            padding: EdgeInsets.all(30.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fullname",
                      style: CustomTextStyle.semiBold,
                    ),
                    Text(
                      "Albus Severus Potter",
                      style: CustomTextStyle.medium,
                    )
                  ],
                ),
                12.gH,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Gender",
                      style: CustomTextStyle.semiBold,
                    ),
                    Text(
                      "Male",
                      style: CustomTextStyle.medium,
                    )
                  ],
                ),
                12.gH,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Age",
                      style: CustomTextStyle.semiBold,
                    ),
                    Text(
                      "36",
                      style: CustomTextStyle.medium,
                    )
                  ],
                ),
                12.gH,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hobby",
                      style: CustomTextStyle.semiBold,
                    ),
                    Text(
                      "Football",
                      style: CustomTextStyle.medium,
                    )
                  ],
                ),
                12.gH,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Telphone",
                      style: CustomTextStyle.semiBold,
                    ),
                    Text(
                      "08123456789",
                      style: CustomTextStyle.medium,
                    )
                  ],
                ),
                12.gH,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Email",
                      style: CustomTextStyle.semiBold,
                    ),
                    Text(
                      "apotter@gmail.com ",
                      style: CustomTextStyle.medium,
                    )
                  ],
                ),
                24.gH,
                CustomButton(text: "Edit", onPressed: () {})
              ],
            ),
          ),
          32.gH,
          CustomButton(
              color: Colors.red,
              text: "Log Out",
              onPressed: controller.onLogOut)
        ],
      ),
    );
  }
}
