import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/core/constants/app_colors.dart';
import 'package:weather_app/core/constants/app_constants.dart';

class AppLoader {
  static void openLoadingDialog({
    required BuildContext context,
  }) {
    showDialog(
      useSafeArea: false,
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return PopScope(
          canPop: false,
          child: Container(
            color: AppConstants.isDarkMode(context: context)
                ? AppColors.dark
                : AppColors.light,
            width: 1.sw,
            height: 1.sh,
            child: Center(
              child: Platform.isAndroid
                  ? CircularProgressIndicator(
                      color: AppConstants.isDarkMode(context: context)
                          ? AppColors.white
                          : AppColors.primaryColor,
                      strokeWidth: 2.w,
                    )
                  : CupertinoActivityIndicator(
                      color: AppConstants.isDarkMode(context: context)
                          ? AppColors.white
                          : AppColors.primaryColor,
                      radius: 25.r,
                    ),
            ),
          ),
        );
      },
    );
  }

  static void stopLoading({
    required BuildContext context,
  }) {
    AutoRouter.of(context).maybePop();
  }
}
