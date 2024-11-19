import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final ThemeData appLightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
  /// 主背景颜色
  scaffoldBackgroundColor: Colors.white,
  /// 取消点击高亮
  splashColor: Colors.transparent,
  /// 取消点击波纹
  highlightColor: Colors.transparent,
  /// appBar的主题
  appBarTheme:
      const AppBarTheme(iconTheme: IconThemeData(color: Colors.black)),
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.blue,
      onPrimary: Colors.white,
      secondary: Colors.lightBlue,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      /// 目前影响 BottomNavigationBarItem
      surface: Colors.white,
      onSurface: Colors.white),
  textTheme: TextTheme(
      displayLarge: TextStyle(color: Colors.black87, fontSize: 24.sp),
      displayMedium: TextStyle(color: Colors.black87, fontSize: 23.sp),
      displaySmall: TextStyle(color: Colors.black87, fontSize: 22.sp),
      headlineLarge: TextStyle(color: Colors.black87, fontSize: 21.sp),
      headlineMedium: TextStyle(color: Colors.black87, fontSize: 20.sp),
      headlineSmall: TextStyle(color: Colors.black87, fontSize: 19.sp),
      titleLarge: TextStyle(color: Colors.black87, fontSize: 18.sp),
      titleMedium: TextStyle(color: Colors.black87, fontSize: 17.sp),
      titleSmall: TextStyle(color: Colors.black87, fontSize: 16.sp),
      bodyLarge: TextStyle(color: Colors.black87, fontSize: 15.sp),
      bodyMedium: TextStyle(color: Colors.black87, fontSize: 14.sp),
      bodySmall: TextStyle(color: Colors.black87, fontSize: 13.sp),
      labelLarge: TextStyle(color: Colors.black87, fontSize: 12.sp),
      labelMedium: TextStyle(color: Colors.black87, fontSize: 11.sp),
      labelSmall: TextStyle(color: Colors.black87, fontSize: 10.sp)),
);

final ThemeData appDarkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black54,
  scaffoldBackgroundColor: Colors.black54,
  /// 取消点击高亮
  splashColor: Colors.transparent,
  /// 取消点击波纹
  highlightColor: Colors.transparent,
  appBarTheme:
      const AppBarTheme(iconTheme: IconThemeData(color: Colors.black54)),
  colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.black54,
      onPrimary: Colors.white,
      secondary: Colors.black38,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: Colors.black38,
      onSurface: Colors.white),
  textTheme: TextTheme(
      displayLarge: TextStyle(color: Colors.white, fontSize: 24.sp),
      displayMedium: TextStyle(color: Colors.white, fontSize: 23.sp),
      displaySmall: TextStyle(color: Colors.white, fontSize: 22.sp),
      headlineLarge: TextStyle(color: Colors.white, fontSize: 21.sp),
      headlineMedium: TextStyle(color: Colors.white, fontSize: 20.sp),
      headlineSmall: TextStyle(color: Colors.white, fontSize: 19.sp),
      titleLarge: TextStyle(color: Colors.white, fontSize: 18.sp),
      titleMedium: TextStyle(color: Colors.white, fontSize: 17.sp),
      titleSmall: TextStyle(color: Colors.white, fontSize: 16.sp),
      bodyLarge: TextStyle(color: Colors.white, fontSize: 15.sp),
      bodyMedium: TextStyle(color: Colors.white, fontSize: 14.sp),
      bodySmall: TextStyle(color: Colors.white, fontSize: 13.sp),
      labelLarge: TextStyle(color: Colors.white, fontSize: 12.sp),
      labelMedium: TextStyle(color: Colors.white, fontSize: 11.sp),
      labelSmall: TextStyle(color: Colors.white, fontSize: 10.sp)),
);
