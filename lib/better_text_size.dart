import 'package:better_utils_flutter/better_utils_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var textTheme = Theme.of(Get.context!).textTheme;

TextStyle? textDisplayLarge({
  Color? color,
  double? letterSpacing,
  double? height,
  FontWeight? fontWeight,
  double? fontSize,
  String? fontFamily,
}) =>
    textTheme.displayLarge?.copyWith(
      color: color,
      letterSpacing: letterSpacing ?? 0,
      height: height,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontSize: fontSize ?? 30.0.d,
      fontFamily: fontFamily ,
    );

TextStyle? textDisplayMedium({
  Color? color,
  FontWeight? fontWeight,
  double? letterSpacing,
  double? height,
  double? fontSize,
  String? fontFamily,
}) =>
    textTheme.displayMedium?.copyWith(
      color: color,
      height: height,
      letterSpacing: letterSpacing ?? 0,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontSize: fontSize ?? 20.0.d,
      fontFamily: fontFamily ,
    );

TextStyle? textDisplaySmall({
  Color? color,
  double? letterSpacing,
  double? height,
  FontWeight? fontWeight,
  double? fontSize,
  String? fontFamily,
}) =>
    textTheme.displaySmall?.copyWith(
      color: color,
      height: height ?? 0,
      letterSpacing: letterSpacing ?? 0,
      fontWeight: fontWeight,
      fontSize: fontSize ?? 16.0.d,
      fontFamily: fontFamily,
    );

TextStyle? textDisplaySuperSmall({
  Color? color,
  FontWeight? fontWeight,
  double? letterSpacing,
  double? height,
  double? fontSize,
  String? fontFamily,
}) =>
    textTheme.displaySmall?.copyWith(
      color: color,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing ?? 0,
      fontSize: fontSize ?? 12.0.d,
      fontFamily: fontFamily,
    );
