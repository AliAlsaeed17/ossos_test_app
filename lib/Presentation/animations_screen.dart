import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ossos_test_app/Bussiness/controllers/animation_controller.dart';
import 'package:ossos_test_app/Constants/ui_colors.dart';
import 'package:ossos_test_app/Constants/ui_styles.dart';
import 'package:ossos_test_app/Constants/ui_text_style.dart';
import 'package:ossos_test_app/Presentation/widgets/animation/custom_container.dart';
import 'package:ossos_test_app/Presentation/widgets/public/custom_appbar.dart';
import 'package:ossos_test_app/Presentation/widgets/public/spacer_height.dart';

// ignore: must_be_immutable
class AnimationsScreen extends StatelessWidget {
  AnimationsScreen({super.key});

  final AnimationScreenController animationScreenController =
      Get.put(AnimationScreenController());

  String name = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        screenTitle: 'Animations',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: UITextStyles.normalTextStyle,
                  ),
                  spacerHeight(height: 60),
                  GetBuilder(
                    init: animationScreenController,
                    builder: (context) {
                      return AspectRatio(
                        aspectRatio: 1,
                        child: AnimatedContainer(
                          curve: Curves.easeOut,
                          duration: const Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            color: animationScreenController
                                .selectedBackgroundColor,
                            borderRadius:
                                animationScreenController.selectedBorderRadius,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainer(
                      backgroundColor: UIColors.darkBlue,
                    ),
                    CustomContainer(
                      backgroundColor: UIColors.lightBlue,
                      borderRadius: raduis15,
                    ),
                    CustomContainer(
                      backgroundColor: UIColors.lightRed,
                      borderRadius: raduis211,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
