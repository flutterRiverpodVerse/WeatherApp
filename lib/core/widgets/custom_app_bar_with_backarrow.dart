import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/core/constants/app_colors.dart';

AppBar customAppBarWithBackArrow({
  required BuildContext context,
  required Widget title,
  bool centerTitle = false,
  Color leadingIconColor = AppColors.white,
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
    leading: IconButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          AppColors.white.withOpacity(0.4),
        ),
      ),
      onPressed: () {
        AutoRouter.of(context).maybePop();
      },
      icon: Icon(
        Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios_new,
        size: 18.sp,
        color: AppColors.white,
      ),
    ),
    actions: actions,
  );
}
