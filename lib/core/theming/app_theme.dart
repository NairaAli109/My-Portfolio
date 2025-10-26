import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/theming/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    // fontFamily: AppStrings.poppinsFont,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.mainWhite,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: AppColors.primaryTextColor),
      titleTextStyle: GoogleFonts.inter(
        color: AppColors.primaryTextColor,
        fontSize: 26,
        fontWeight: FontWeight.w700,
      ),
    ),
    scaffoldBackgroundColor: AppColors.lightBlue,
    useMaterial3: false,
  );
}
