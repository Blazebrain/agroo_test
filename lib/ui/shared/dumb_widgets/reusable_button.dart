import 'package:agroo_test/ui/shared/dumb_widgets/const_ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';
import '../textstyles.dart';

class ReusableButton extends StatelessWidget {
  final void Function() onPressed;
  final String? label;
  final Color? labelColor;
  final TextStyle? labelTextStyle; //TODO: added this
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final FontWeight? labelWeight;
  final Widget? customChild;
  final double borderRadius;
  final BorderSide? borderSide;

  const ReusableButton({
    Key? key,
    this.labelColor,
    required this.onPressed,
    this.label,
    this.backgroundColor,
    this.height,
    this.width,
    this.labelWeight,
    this.borderRadius = 100,
    this.labelTextStyle,
    this.borderSide,
    this.customChild,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      highlightElevation: 0,
      disabledElevation: 0,
      fillColor: backgroundColor ?? BrandColors.orangeColor,
      constraints: BoxConstraints.tightFor(
        height: height ?? 60.h,
        width: width ?? double.infinity,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            borderRadius.r,
          ),
        ),
        side: borderSide ?? BorderSide.none,
      ),
      padding: padding ??
          EdgeInsets.symmetric(
            vertical: 8.h,
            horizontal: 16.w,
          ),
      child: customChild ??
          FittedBox(
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_forward,
                  color: BrandColors.whiteColor,
                  size: 18,
                ),
                horizontalSpaceTiny,
                Text(
                  label!,
                  style: labelTextStyle ??
                      AppTextStyles.buttonText.copyWith(color: labelColor),
                ),
              ],
            ),
          ),
    );
  }
}
