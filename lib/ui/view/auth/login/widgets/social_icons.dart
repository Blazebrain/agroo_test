import 'package:agroo_test/ui/shared/colors.dart';
import 'package:agroo_test/ui/shared/dumb_widgets/const_ui_helpers.dart';
import 'package:agroo_test/ui/shared/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialLoginButton extends StatelessWidget {
  final String? imagePath;
  final String? title;
  const SocialLoginButton({
    Key? key,
    this.title,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(bottom: 28.h, left: 24.w),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: BrandColors.whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath!,
              height: 32.h,
              width: 32.w,
            ),
            horizontalSpaceTiny,
            Text(
              title!,
              style: AppTextStyles.buttonText.copyWith(
                color: BrandColors.greyColor,
                fontSize: 18.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
