import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:zipense/app/modules/splash_module/splash_controller.dart';
import 'package:zipense/core/utils/app_images.dart';
import 'package:zipense/core/utils/app_styles.dart';
import 'package:zipense/core/utils/size.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SplashPageController());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SizedBox(
          width: Get.width - 150.w,
          child: Image.asset(AppImages.logo),
        ),
      ),
    );
  }
}
