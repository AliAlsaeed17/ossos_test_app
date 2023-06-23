import 'package:get/get.dart';
import 'package:ossos_test_app/Constants/get_routes.dart';
import 'package:ossos_test_app/Presentation/public/home_scree.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(name: AppRoutes.homeScreenRoute, page: () => HomeScreen()),
];
