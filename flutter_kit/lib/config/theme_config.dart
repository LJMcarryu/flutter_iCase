//创建Dark ThemeData对象

import 'package:flutter/material.dart';
import 'package:flutter_kit/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//创建light ThemeData对象
final ThemeData appLightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.red,
  scaffoldBackgroundColor: Colors.blue,
  textTheme: TextTheme(
      headlineMedium: TextStyle(color: Colors.yellow, fontSize: 15.sp)),
);

final ThemeData appDarkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blueGrey,
  scaffoldBackgroundColor: Colors.grey,
  textTheme:
      TextTheme(headlineMedium: TextStyle(color: Colors.cyan, fontSize: 15.sp)),
);
