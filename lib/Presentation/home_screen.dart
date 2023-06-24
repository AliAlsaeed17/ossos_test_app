import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ossos_test_app/Bussiness/controllers/home_controller.dart';
import 'package:ossos_test_app/Constants/get_routes.dart';
import 'package:ossos_test_app/Constants/ui_colors.dart';
import 'package:ossos_test_app/Constants/ui_styles.dart';
import 'package:ossos_test_app/Constants/ui_text_style.dart';
import 'package:ossos_test_app/Presentation/widgets/public/custom_appbar.dart';
import 'package:ossos_test_app/Presentation/widgets/home/custom_button.dart';
import 'package:ossos_test_app/Presentation/widgets/public/spacer_height.dart';
import 'package:ossos_test_app/Presentation/widgets/public/spacer_width.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(screenTitle: 'Home'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    controller: homeController.nameController,
                    decoration: normalInputStyle.copyWith(
                      hintText: 'Enter Your Name',
                    ),
                    onChanged: (name) {
                      homeController.setName(name);
                    },
                  ),
                  const spacerHeight(height: 40),
                  GetBuilder(
                    init: homeController,
                    builder: (context) {
                      return Text(
                        homeController.name,
                        style: UITextStyles.normalTextStyle,
                      );
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      homeController.clearName();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.delete,
                          color: UIColors.warningIconColor,
                        ),
                        const spacerWidth(width: 10),
                        Text(
                          'Clear text',
                          style: UITextStyles.normalTextStyle.copyWith(
                            color: UIColors.warningText,
                          ),
                        )
                      ],
                    ),
                  ),
                  const spacerHeight(height: 20),
                  CustomButton(
                    text: 'Go to page 1',
                    backgroundColor: UIColors.darkBlue,
                    onPressed: () {
                      Get.toNamed(
                        AppRoutes.animationScreenRoute,
                        arguments: homeController.name,
                      );
                    },
                  ),
                  const spacerHeight(),
                  CustomButton(
                    text: 'Go to page 2',
                    backgroundColor: UIColors.lightBlue,
                    onPressed: () {
                      Get.toNamed(AppRoutes.pokemonsScreenRoute);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
