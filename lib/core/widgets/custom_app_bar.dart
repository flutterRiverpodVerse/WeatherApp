import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_colors.dart';

AppBar customAppBar({
  required BuildContext context,
  required Widget title,
  bool centerTitle = false,
  double elevation = 0,
  Color backgroundColor = AppColors.white,
  bool forceMaterialTransparency = true,
  List<Widget>? actions,
}) {
  return AppBar(
    elevation: elevation,
    backgroundColor: backgroundColor,
    forceMaterialTransparency: forceMaterialTransparency,
    title: title,
    centerTitle: centerTitle,
    actions: actions,
  );
}
