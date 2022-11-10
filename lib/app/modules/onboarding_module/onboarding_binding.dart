import 'package:get/get.dart';
import 'package:zipense/app/modules/onboarding_module/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(OnboardingController());
  }
}
