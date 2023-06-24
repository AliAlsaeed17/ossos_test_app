import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ossos_test_app/Constants/ui_colors.dart';

class AnimationScreenController extends GetxController {
  Color selectedBackgroundColor = UIColors.darkBlue;
  BorderRadiusGeometry? selectedBorderRadius;

  void setContainerProperities(color, borderRadius) {
    selectedBackgroundColor = color;
    selectedBorderRadius = borderRadius;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
