import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ossos_test_app/Bussiness/controllers/animation_controller.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({
    super.key,
    required this.backgroundColor,
    this.borderRadius,
  });

  final Color backgroundColor;
  final BorderRadiusGeometry? borderRadius;

  final AnimationScreenController animationScreenController =
      Get.find<AnimationScreenController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        animationScreenController.setContainerProperities(
            backgroundColor, borderRadius);
      },
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
        ),
      ),
    );
  }
}
