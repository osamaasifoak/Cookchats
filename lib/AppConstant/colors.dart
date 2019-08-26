import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AppColor{
  static const splashContainer = Color.fromRGBO(250, 160, 46, 1);
  static const animationColor = Color.fromRGBO(241, 84, 40, 1);
   static const splashContainerLinearTextOpacity = Color.fromRGBO(250, 160, 46, 0.3);
  static const splashContainerLinearTextOpacity1 = Color.fromRGBO(241, 84, 40, 0.3);

  static Shader linearGradient = RadialGradient(
  colors: <Color>[splashContainerLinearTextOpacity, splashContainerLinearTextOpacity1],
).createShader(Rect.fromLTWH(30.0, 50.0, 30.0, 70.0));


static const white = Colors.white;

static const MaterialColor primarywhite = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);
}