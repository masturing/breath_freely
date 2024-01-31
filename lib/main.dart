import 'package:breath_freely/app/data/supabase/client.dart';
import 'package:breath_freely/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await SClient().init();
  await GetStorage.init();
  runApp(
    ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Breath Freely",
        initialRoute: (MainConfig.storage.read('user') != null)
            ? Routes.HOME
            : Routes.AUTH_SCREEN,
        getPages: AppPages.routes,
      ),
    ),
  );
}
