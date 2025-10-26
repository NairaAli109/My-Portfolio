import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theming/app_colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
    this.textAlign,
    this.letterSpacing,
    this.height,
    this.wordSpacing,
  });

  final String text;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final double? height;
  final double? wordSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: TextStyle(
        color: textColor ?? AppColors.primaryTextColor,
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.w700,
        // fontFamily: fontFamily ?? AppStrings.poppinsFont,
        wordSpacing: wordSpacing ?? 1.0,
        letterSpacing: letterSpacing ?? 0.5,
        height: height,
      ),
    );
  }
}
