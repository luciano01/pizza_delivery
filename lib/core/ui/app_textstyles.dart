import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core.dart';

class AppTextStyles {
  static TextStyle labelTextField = GoogleFonts.fredoka(
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    color: AppColors.grey,
  );

  static TextStyle labelButton = GoogleFonts.fredoka(
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    color: AppColors.white,
  );

  static TextStyle title = GoogleFonts.fredoka(
    fontSize: 24.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    color: AppColors.defaultText,
  );

  static TextStyle subtitle = GoogleFonts.fredoka(
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    color: AppColors.defaultText,
  );
}
