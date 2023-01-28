import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gurudemy/src/global/ui/ui_barrel.dart';
import 'package:gurudemy/src/utils/utils_barrel.dart';

abstract class TextStyles {
  static final TextStyle heading = TextStyle(
    fontSize: 40.sp,
    color: AppColors.textBlack,
    height: 1.4,
    fontWeight: FontWeight.w500,
    fontFamily: FontAssets.playfairDisplay,
  );

  static final TextStyle subHeading = TextStyle(
    fontSize: 32.sp,
    color: AppColors.textBlack,
    height: 1.25,
    fontWeight: FontWeight.w500,
    fontFamily: FontAssets.playfairDisplay,
  );

  static final TextStyle subHeading1 = TextStyle(
    fontSize: 25.6.sp,
    color: AppColors.textBlack,
    height: 1.25,
    fontWeight: FontWeight.w500,
    fontFamily: FontAssets.playfairDisplay,
  );

  static final TextStyle subHeading2 = TextStyle(
    fontSize: 20.48.sp,
    color: AppColors.textBlack,
    height: 1.56,
    fontWeight: FontWeight.w500,
    fontFamily: FontAssets.playfairDisplay,
  );

  static final TextStyle button = TextStyle(
    fontSize: 32.sp,
    color: AppColors.textBlack,
    height: 1.25,
    fontWeight: FontWeight.w600,
    fontFamily: FontAssets.workSans,
  );

  static final TextStyle buttonSmall = TextStyle(
    fontSize: 16.sp,
    color: AppColors.textBlack,
    height: 1.5,
    fontWeight: FontWeight.w400,
    fontFamily: FontAssets.workSans,
  );

  static final TextStyle bodySmall = TextStyle(
    fontSize: 16.sp,
    color: AppColors.textBlack,
    height: 1.5,
    fontWeight: FontWeight.w400,
    fontFamily: FontAssets.workSans,
  );

  static final TextStyle bodyLarge = TextStyle(
    fontSize: 20.sp,
    color: AppColors.textBlack,
    height: 1.2,
    fontWeight: FontWeight.w400,
    fontFamily: FontAssets.workSans,
  );

  static final TextStyle caption = TextStyle(
    fontSize: 12.8.sp,
    color: AppColors.textBlack,
    height: 1.25,
    fontWeight: FontWeight.w400,
    fontFamily: FontAssets.workSans,
  );

  static final TextStyle captionItalic = TextStyle(
    fontSize: 12.8.sp,
    color: AppColors.textBlack,
    height: 1.25,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w400,
    fontFamily: FontAssets.workSans,
  );
}
