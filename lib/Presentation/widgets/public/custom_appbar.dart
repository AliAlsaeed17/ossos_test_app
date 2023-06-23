import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar({Widget? leading, String? screenTitle}) {
  return AppBar(
    elevation: 0.0,
    leading: leading,
    title: Text(screenTitle!),
  );
}
