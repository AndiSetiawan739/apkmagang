import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double setWidth(double width) => ScreenUtil().setWidth(width);

double setHeight(double height) => ScreenUtil().setHeight(height);

double setFontSize(double size) => size.sp;

TextStyle styleTitle = TextStyle(
    fontSize: setFontSize(48),
    color: Colors.black,
    fontWeight: FontWeight.w700);

TextStyle styleSemiTitle = TextStyle(
    fontSize: setFontSize(36),
    color: Colors.black,
    fontWeight: FontWeight.w500);

TextStyle styleSubtitle = TextStyle(
    fontSize: setFontSize(32),
    color: Colors.black,
    fontWeight: FontWeight.w400);

TextStyle styleSubtitleLight = TextStyle(
    fontSize: setFontSize(32),
    color: Colors.black,
    fontWeight: FontWeight.w300);

void setupScreenUtil(BuildContext context) {
  double baseWidth = MediaQuery.of(context).size.width; //1000
  double baseHeight = MediaQuery.of(context).size.height;

  double defaultSceenUtilWidth = 1080;
  double defaultSceenUtilHeight = 1920;

  double iPadPro12InchWidth = 2040;
  double iPadPro12IncHeight = 2732;

  double designWidth = 0;
  double designHeight = 0;

  if (baseWidth >= 768) {
    designWidth = iPadPro12InchWidth;
  } else {
    designWidth = defaultSceenUtilWidth;
  }

  if (baseHeight >= 1024) {
    designHeight = iPadPro12IncHeight;
  } else {
    designHeight = defaultSceenUtilHeight;
  }

  ScreenUtil.init(
    context,
    designSize: Size(designWidth, designHeight),
  );
}
