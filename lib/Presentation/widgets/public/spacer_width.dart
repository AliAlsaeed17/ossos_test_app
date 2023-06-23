import 'package:flutter/material.dart';

class spacerWidth extends StatelessWidget {
  const spacerWidth({super.key, this.width = 14.0});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
