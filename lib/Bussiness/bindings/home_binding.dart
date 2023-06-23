import 'package:get/get.dart';
import 'package:ossos_test_app/Bussiness/controllers/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
