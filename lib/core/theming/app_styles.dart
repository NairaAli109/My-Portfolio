import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theming/app_colors.dart';

class AppTextStyles {
  static const TextStyle heroTitle = TextStyle(
    fontSize: 72,
    fontWeight: FontWeight.w700,
    height: 1.1,
    color: AppColors.primaryTextColor,
    letterSpacing: -0.025,
  );

  static const TextStyle sectionTitle = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w600,
    height: 1.2,
    color: AppColors.primaryTextColor,
    letterSpacing: -0.02,
  );

  static const TextStyle cardTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.4,
    color: AppColors.primaryTextColor,
    letterSpacing: -0.01,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.6,
    color: AppColors.secondaryTextColor,
  );
}