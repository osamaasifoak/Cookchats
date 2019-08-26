import 'dart:ui';
import 'package:cookchats/AppConstant/AppText.dart';
import 'package:cookchats/AppConstant/colors.dart';
import 'package:cookchats/LoginSignup/Signup.dart';
import 'package:cookchats/ResponsiveSize/appSize.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'LoginSignup/Login.dart';
import 'Pages/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColor.white,
        primarySwatch: AppColor.primarywhite,
        accentColor: AppColor.animationColor
      ),
      home:SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        'Login'  : (context)=> Login(),
        'Signup' :(context)=> Signup(),
        'Home'   :(context)=>Home()
       },
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  Animation<EdgeInsets> animation;
  Color animationColor = AppColor.splashContainer;
  AnimationController animationController;

 
  double _logoContainerHeight = 0.0;
  double _logoContainerWidth = 0.0;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5
        ), 
      )..addListener(()=>setState((){}));
      animation =EdgeInsetsTween(
        begin: EdgeInsets.only(left: 0.0, top: 0.0),
        end: EdgeInsets.only(left: 40.0,right: 0.0),
      ).animate(animationController);
      animationController.forward();

      Future.delayed(Duration(seconds: 1),(){
      _logoContainerHeight= 180.0;
      _logoContainerWidth = 180.0;
      animationColor = AppColor.animationColor;
      Future.delayed(Duration(seconds: 2),(){
        Navigator.pushNamed(context, 'Login');
      });
      });

  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
          body: Stack(
             children: <Widget>[
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Center(
                                     child: AnimatedSize(
                                      vsync: this,
                                      duration: Duration(seconds: 1),
                                      curve: Curves.easeOutQuad,
                                       child: Hero(
                                        tag: 'logo',
                                         child: Container(
                                           width: _logoContainerWidth,
                                           height: _logoContainerHeight,
                                          decoration: new BoxDecoration(
                                            image: new DecorationImage(
                                              image: ExactAssetImage(AppText.assetsLogo) 
                                            ),
                                           ),
                                         ),
                                       ),
                                     ),  
                                  ),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           new Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                             children: <Widget>[
                                  Padding(
                                        padding: const EdgeInsets.only(bottom: 20.0),
                                        child: new Text(
                                          AppText.cc, 
                                          style: new TextStyle(
                                          // foreground: Paint()..shader = AppColor.linearGradient,
                                          color: Colors.black,
                                          fontSize: 40.0
                                          ),
                                        ),
                                      )
                             ],
                           ),
                         ],
                       )
                ], 
          ),
    );
  }
}
