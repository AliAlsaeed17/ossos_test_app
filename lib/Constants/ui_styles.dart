import 'package:flutter/material.dart';
import 'package:ossos_test_app/Constants/ui_colors.dart';
import 'package:ossos_test_app/Constants/ui_text_style.dart';

//Button Styles
final normalButtonStyle = ButtonStyle(
  elevation: const MaterialStatePropertyAll(0),
  backgroundColor: const MaterialStatePropertyAll<Color>(UIColors.white),
  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
  minimumSize: const MaterialStatePropertyAll<Size>(
    Size(double.infinity, 56),
  ),
);

//Text Field Styles
final normalInputStyle = InputDecoration(
  border: UnderlineInputBorder(
    borderSide: BorderSide(
      width: 1,
      color: UIColors.textFieldBorder,
    ),
  ),
  hintStyle: UITextStyles.normalTextStyle,
);

//Border Radius
const raduis14 = BorderRadius.all(Radius.circular(14));
const raduis15 = BorderRadius.all(Radius.circular(15));
const raduis211 = BorderRadius.all(Radius.circular(211));
