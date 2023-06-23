import 'package:get/get.dart';
import 'package:ossos_test_app/Constants/get_routes.dart';

class SplashController extends GetxController {
  void navigateToHomeScreen() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Get.offAndToNamed(AppRoutes.homeScreenRoute));
  }

  @override
  void onInit() {
    navigateToHomeScreen();
    super.onInit();
  }
}
