import 'package:get/get.dart';
import 'package:zipense/app/modules/splash_module/splash_controller.dart';

class SplashPageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SplashPageController());
  }
}
