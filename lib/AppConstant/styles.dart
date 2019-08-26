import 'package:cookchats/AppConstant/colors.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const  linearGradientLoginSignupPage = LinearGradient(
     begin: Alignment.topLeft,
       end: Alignment.bottomRight,
        colors: [AppColor.animationColor,AppColor.splashContainer]                                                  
        );

  static const sizeboxLoginSignupPage = SizedBox(
    height: 10.0,
  );

  static const textFormFields= TextStyle(
      color: Colors.white
  );
  
    static const textLoginSignUp= 20.0;
  static const roundedRectangleBorderLoginSignupPage =RoundedRectangleBorder(
    borderRadius: BorderRadius.all(const Radius.circular(20.0))
    );
  static const borderRadiusLoginSignupPage= BorderRadius.all(
      const Radius.circular(20.0)
  );
}