import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../colors/colors.dart';


class AppTextStyle {
  static TextStyle normalTextTheme = GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 16, color: AppColors.textColor));
  static TextStyle appBarTextTheme = GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 24, color: AppColors.textColor,fontWeight: FontWeight.w600));
}
