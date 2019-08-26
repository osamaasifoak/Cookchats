import 'package:cookchats/AppConstant/AppText.dart';
import 'package:cookchats/AppConstant/colors.dart';
import 'package:cookchats/AppConstant/styles.dart';
import 'package:cookchats/ResponsiveSize/appSize.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  Animation<EdgeInsets> animation;
  Color animationColor = AppColor.splashContainer;
  AnimationController animationController;
  double _logoContainerHeight = 0.0;
  double _logoContainerWidth = 0.0;
  double _signUpFontSize = 0.0;

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
      _signUpFontSize = Styles.textLoginSignUp;
      });

  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
          body:  Center(
            child: Stack( 
                  children: <Widget>[
                             Center(
                                  child:SingleChildScrollView(
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: <Widget>[
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                AnimatedSize(
                                                      vsync: this,
                                                      duration: Duration(seconds: 1),
                                                      curve: Curves.bounceOut,
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
                                                ],
                                            ),
                                           Styles.sizeboxLoginSignupPage,
                                              new Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                       children: <Widget>[
                                                         Card(
                                                           elevation: 10.0,
                                                           shape: Styles.roundedRectangleBorderLoginSignupPage,
                                                          child: Container(
                                                            width: SizeConfig.mediaQueryWidthLoginSignUpTextFormFields,
                                                            decoration: new BoxDecoration(
                                                             gradient: Styles.linearGradientLoginSignupPage,                                                   
                                                             borderRadius: Styles.borderRadiusLoginSignupPage
                                                             ),
                                                             child: Padding(
                                                               padding: const EdgeInsets.only(left:8.0),
                                                               child: new TextFormField(
                                                                 decoration: InputDecoration(
                                                                   labelText: AppText.email,
                                                                   hintStyle: Styles.textFormFields,
                                                                   labelStyle: Styles.textFormFields,
                                                                   icon: new Icon(
                                                                     Icons.person,
                                                                     color: AppColor.white,

                                                                   ),
                                                                   border: InputBorder.none
                                                                 ),
                                                                  style: TextStyle(color: AppColor.white),
                                                                 cursorColor: AppColor.white,
                                                               ),
                                                             )
                                                             ),
                                                         )
                                                       ],
                                                     ),
                                                     Styles.sizeboxLoginSignupPage,
                                              new Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                       children: <Widget>[
                                                         Card(
                                                           elevation: 10.0,
                                                           shape: Styles.roundedRectangleBorderLoginSignupPage,
                                                          child: Container(
                                                             width: SizeConfig.mediaQueryWidthLoginSignUpTextFormFields,
                                                              decoration: new BoxDecoration(
                                                             gradient: Styles.linearGradientLoginSignupPage,                                                   
                                                                 borderRadius: Styles.borderRadiusLoginSignupPage
                                                             ),
                                                             child: Padding(
                                                               padding: const EdgeInsets.only(left:8.0),
                                                               child: new TextFormField(
                                                                 obscureText: true,
                                                                 decoration: InputDecoration(
                                                                   labelText: AppText.password,
                                                                   hintStyle: Styles.textFormFields,
                                                                   labelStyle: Styles.textFormFields,
                                                                   icon: new Icon(
                                                                     Icons.lock,
                                                                     color: AppColor.white,
                                                                   ),
                                                                   border: InputBorder.none
                                                                 ),
                                                                  style: TextStyle(color: AppColor.white),
                                                                 cursorColor: AppColor.white,
                                                               ),
                                                             )
                                                             ),
                                                         )
                                                       ],
                                                     ), 
                                                    Styles.sizeboxLoginSignupPage,
                                                     new Row(
                                                       mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                        new Card(
                                                            elevation: 10.0,
                                                            shape: Styles.roundedRectangleBorderLoginSignupPage,
                                                            child: Container(
                                                              decoration: new BoxDecoration(
                                                             gradient: Styles.linearGradientLoginSignupPage,                                                   
                                                               borderRadius: Styles.borderRadiusLoginSignupPage
                                                             ),
                                                             width: SizeConfig.mediaQueryWidthLoginSignUpButton,
                                                             child: FlatButton
                                                              (
                                                                onPressed: (){
                                                                  Navigator.pushNamed(context, 'Home');
                                                                },
                                                                child: new Text(AppText.login, 
                                                                style: TextStyle(
                                                                  color: AppColor.white,
                                                                  fontSize: Styles.textLoginSignUp
                                                                )),
                                                              ),
                                                           ),
                                                            ),
                                                        ],
                                                     ),
                                                  Styles.sizeboxLoginSignupPage, // sizebox
                                                     Align(
                                                      alignment: Alignment.bottomCenter,                                                                                                                                                            child: Padding(
                                                       padding: const EdgeInsets.all(8.0),                         
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                              children: <Widget>[
                                                                new Column(
                                                                 mainAxisAlignment: MainAxisAlignment.end,
                                                                  children: <Widget>[
                                                                  AnimatedSize(
                                                                curve: Curves.easeInOutQuad,
                                                              vsync: this,
                                                              duration: new Duration(seconds: 1),
                                                            child: GestureDetector(
                                                          onTap: (){
                                                        Navigator.pushNamed(context, 'Signup');
                                                        },
                                              child: new Container(
                                                child: new Row(
                                                children: <Widget>[
                                                  new Text(
                                                    AppText.signup,
                                                    style: TextStyle(fontSize: _signUpFontSize),
                                                  )
                                                ],
                                          ),
                                        ),
                                      ),
                                        ),
                                  ],
                                ),
                              ],
                            ),
                         ),
                        )   
                      ],
                ),
            ),
          ),

          ],
      ),
          ),
            
    );
  }
}
