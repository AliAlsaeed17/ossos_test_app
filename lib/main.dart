import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ossos_test_app/Constants/get_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ossos Test App',
      getPages: getPages,
    );
  }
}
