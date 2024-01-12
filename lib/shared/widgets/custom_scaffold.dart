import 'package:breath_freely/shared/utils/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../config.dart';
import 'custom_navbar.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body, appbar;
  final Color statusBarColor, systemNavigationBarColor;
  final Color? bgColor;
  final Brightness statusBarIconBrightness, systemNavigationBarIconBrightness;
  final bool withNavbar;
  final bool useSafeArea;
  final String? bgImg;
  final int? currentIndex;
  final void Function(int)? onTap;

  const CustomScaffold({
    super.key,
    required this.body,
    required this.useSafeArea,
    this.statusBarColor = Colors.transparent,
    this.statusBarIconBrightness = Brightness.dark,
    this.systemNavigationBarIconBrightness = Brightness.dark,
    this.systemNavigationBarColor = Colors.black,
    this.appbar = const SizedBox(),
    this.withNavbar = false,
    this.bgColor,
    this.bgImg,
    this.currentIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        systemNavigationBarColor: systemNavigationBarColor,
        statusBarIconBrightness: statusBarIconBrightness,
        systemNavigationBarIconBrightness: systemNavigationBarIconBrightness,
      ),
      child: Scaffold(
        backgroundColor: bgColor,
        body: (useSafeArea)
            ? SafeArea(
                child: Stack(
                  children: [
                    body,
                    Positioned(
                      top: 0,
                      child: appbar,
                    ),
                    withNavbar
                        ? RsBottomNavbar(
                            currentIndex: currentIndex,
                            onTap: onTap,
                          )
                        : const SizedBox()
                  ],
                ),
              )
            : Container(
                width: ScreenSize.w,
                height: ScreenSize.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        bgImg ?? MainConfig.kDefaultAssetImagePlaceholder),
                    fit: BoxFit.cover,
                  ),
                ),
                child: withNavbar
                    ? Stack(
                        children: [
                          body,
                          Positioned(
                            top: 0,
                            child: appbar,
                          ),
                          RsBottomNavbar(
                            currentIndex: currentIndex,
                            onTap: onTap,
                          )
                        ],
                      )
                    : body,
              ),
      ),
    );
  }
}
