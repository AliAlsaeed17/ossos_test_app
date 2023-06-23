import 'package:get/get.dart';
import 'package:ossos_test_app/Bussiness/controllers/splash_controller.dart';

class InitBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
