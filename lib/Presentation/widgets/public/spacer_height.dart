import 'package:flutter/material.dart';

class spacerHeight extends StatelessWidget {
  const spacerHeight({super.key, this.height = 14.0});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
