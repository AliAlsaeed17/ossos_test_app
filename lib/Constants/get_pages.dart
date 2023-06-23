import 'package:get/get.dart';
import 'package:ossos_test_app/Bussiness/bindings/home_binding.dart';
import 'package:ossos_test_app/Bussiness/bindings/init_binding.dart';
import 'package:ossos_test_app/Constants/get_routes.dart';
import 'package:ossos_test_app/Presentation/home_screen.dart';
import 'package:ossos_test_app/Presentation/splash_screen.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(
    name: AppRoutes.splashScreenRoute,
    page: () => SplashScreen(),
    binding: InitBindings(),
  ),
  GetPage(
    name: AppRoutes.homeScreenRoute,
    page: () => HomeScreen(),
    binding: HomeBindings(),
  ),
];
