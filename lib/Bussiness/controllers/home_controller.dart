import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController nameController = TextEditingController();
  String name = 'Your Name';

  void setName(String newName) {
    name = newName;
    update();
  }

  void clearName() {
    nameController.clear();
    setName('Your Name');
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
