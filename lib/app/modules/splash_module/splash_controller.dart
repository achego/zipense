import 'package:get/get.dart';
import 'package:zipense/routes/pages.dart';

class SplashPageController extends GetxController {
  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await Future.delayed(Duration(seconds: 2));
    Get.toNamed(Routes.onboarding);
  }
}
