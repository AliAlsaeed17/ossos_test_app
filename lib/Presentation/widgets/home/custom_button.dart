import 'package:flutter/material.dart';
import 'package:ossos_test_app/Constants/ui_styles.dart';
import 'package:ossos_test_app/Constants/ui_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
  });

  final String text;
  final Color backgroundColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: normalButtonStyle.copyWith(
        backgroundColor: MaterialStatePropertyAll<Color>(backgroundColor),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        softWrap: true,
        //overflow: TextOverflow.ellipsis,
        style: UITextStyles.normalTextStyle,
      ),
    );
  }
}
