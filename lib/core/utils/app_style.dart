import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/utils/color_manager.dart';

class LightAppStyle {
  static TextStyle appBar = GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: ColorManager.white,
  );
  static TextStyle settingsLabel = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: Colors.black,
  );
  static TextStyle selectedSettingLabel = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: ColorManager.blue,
  );
}
