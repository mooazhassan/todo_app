import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/app_style.dart';

import '../../core/utils/color_manager.dart';

class MyTheme {
  static ThemeData light = ThemeData(
    appBarTheme: AppBarTheme(
      color: ColorManager.blue,
      titleTextStyle: LightAppStyle.appBar,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorManager.blue,
      primary: ColorManager.blue,
      onPrimary: ColorManager.white,
    ),
    scaffoldBackgroundColor: ColorManager.greenAcssent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedItemColor: ColorManager.blue,
      unselectedItemColor: ColorManager.grey,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
      selectedIconTheme: IconThemeData(size: 35),
      unselectedIconTheme: IconThemeData(size: 30),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: ColorManager.blue,
        foregroundColor: ColorManager.white),
    useMaterial3: true,
    bottomAppBarTheme: BottomAppBarTheme(
      shape: CircularNotchedRectangle(),
      color: ColorManager.white,
      shadowColor: ColorManager.white,
    ),
  );

  static ThemeData dark = ThemeData();
}
