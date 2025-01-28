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
  static TextStyle bottomSheetTitle = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: Colors.black,
  );
  static TextStyle hint = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: ColorManager.hint,
  );
  static TextStyle dateLabel = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: Colors.black,
  );
  static TextStyle submitLabel = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: Colors.white,
  );
  static TextStyle taskTitle = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: ColorManager.blue,
  );
  static TextStyle taskDesc = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: Colors.black,
  );
  static TextStyle taskDate = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Colors.black,
  );
  static TextStyle activeCalenderDayMonth = GoogleFonts.roboto(
    fontSize: 12,
    color: ColorManager.blue,
    fontWeight: FontWeight.w500,
  );
  static TextStyle activeCalenderDayNum = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w900,
    color: ColorManager.blue,
  );
  static TextStyle activeCalendarDayStr = GoogleFonts.roboto(
    fontSize: 12,
    color: ColorManager.blue,
    fontWeight: FontWeight.w500,
  );
  static TextStyle inactiveCalenderDayMonth = GoogleFonts.roboto(
    fontSize: 12,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle inactiveCalenderDayNum = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w900,
    color: Colors.black,
  );
  static TextStyle inactiveCalendarDayStr = GoogleFonts.roboto(
    fontSize: 12,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );
}
