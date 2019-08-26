import 'package:cookchats/AppConstant/AppText.dart';
import 'package:cookchats/AppConstant/colors.dart';
import 'package:cookchats/AppConstant/styles.dart';
import 'package:cookchats/ResponsiveSize/appSize.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> with TickerProviderStateMixin {
  Animation<EdgeInsets> animation;
  Color animationColor = AppColor.splashContainer;
  AnimationController animationController;
  bool arrowBackIcon = false;

  AnimationController _iconanimationController;
  double _logoContainerHeight = 0.0;
  double _logoContainerWidth = 0.0;

  @override
  void initState() {
    super.initState();
    _iconanimationController =AnimationController(
      vsync: this, duration: Duration(milliseconds: 300));
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

      Future.delayed(Duration(milliseconds: 500),(){
      _logoContainerHeight= 180.0;
      _logoContainerWidth = 180.0;
      animationColor = AppColor.animationColor;
      });
      if(arrowBackIcon == false){
        arrowBackIcon = true;
      }
      else{
        arrowBackIcon =false;
      }
  }
    @override
  void dispose() {
    _iconanimationController.dispose();
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
          body:Center(
            child: Stack( 
                  children: <Widget>[
                        Padding(  
                          padding: const EdgeInsets.only(top: 50.0 ,left: 20.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                             child: Card(
                              shape: Styles.roundedRectangleBorderLoginSignupPage,
                               elevation: 10.0,
                                child: Container (
                                 height:40.0 ,
                                 width: 40.0,
                                 decoration: new BoxDecoration(
                                   gradient: Styles.linearGradientLoginSignupPage,
                                   borderRadius: Styles.borderRadiusLoginSignupPage 
                                 ),
                                  child: 
                                  new IconButton(
                                    icon: AnimatedIcon(
                                      icon: arrowBackIcon ? AnimatedIcons.menu_close :AnimatedIcons.close_menu,
                                      color: AppColor.white,
                                      progress: animationController,
                                      semanticLabel: 'Back',
                                    ),
                                    onPressed: (){
                                      Navigator.pushReplacementNamed(context, 'Login');
                                        },                           
                                     ),
                                 ),
                             ),
                          ),
                        ),
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
                                             new Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                       children: <Widget>[
                                                         Card(
                                                           elevation: 10.0,
                                                           shape: Styles.roundedRectangleBorderLoginSignupPage,
                                                          child: Container(
                                                            width: MediaQuery.of(context).size.width/2.5,
                                                            decoration: new BoxDecoration(
                                                             gradient: Styles.linearGradientLoginSignupPage,                                                   
                                                             borderRadius: Styles.borderRadiusLoginSignupPage
                                                             ),
                                                             child: Padding(
                                                               padding: const EdgeInsets.only(left:8.0),
                                                               child: new TextFormField(
                                                                 decoration: InputDecoration(
                                                                   labelText: AppText.firstName,
                                                                   hintStyle: Styles.textFormFields,
                                                                   labelStyle: Styles.textFormFields,
                                                                   icon: new Icon(
                                                                     Icons.person_outline,
                                                                     color: AppColor.white,
                                                                   ),
                                                                   border: InputBorder.none
                                                                 ),
                                                                  style: TextStyle(color: AppColor.white),
                                                                 cursorColor: AppColor.white,
                                                               ),
                                                             )
                                                             ),
                                                         ),
                                                               Card(
                                                           elevation: 10.0,
                                                           shape: Styles.roundedRectangleBorderLoginSignupPage,
                                                          child: Container(
                                                            width: MediaQuery.of(context).size.width/2.5,
                                                            decoration: new BoxDecoration(
                                                             gradient: Styles.linearGradientLoginSignupPage,                                                   
                                                             borderRadius: Styles.borderRadiusLoginSignupPage
                                                             ),
                                                             child: Padding(
                                                               padding: const EdgeInsets.only(left:8.0),
                                                               child: new TextFormField(
                                                                 decoration: InputDecoration(
                                                                   labelText: AppText.lastName,
                                                                   hintStyle: Styles.textFormFields,
                                                                   labelStyle: Styles.textFormFields,
                                                                   icon: new Icon(
                                                                     Icons.person_outline,
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
                                                                   labelText: AppText.confirmpassword,
                                                                   hintStyle: Styles.textFormFields,
                                                                   labelStyle: Styles.textFormFields,
                                                                   icon: new Icon(
                                                                     Icons.lock,
                                                                     color: AppColor.white,
                                                                   ),
                                                                   fillColor: AppColor.white,
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
                                                                onPressed: (null),
                                                                child: new Text(AppText.signup, 
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
                                              alignment: Alignment.bottomCenter,                                                                          child: Padding(
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
                                             child: new Container(
                                           child: new Row(
                                          children: <Widget>[
                                         new Image(
                                        image: AssetImage(AppText.googleicon),
                                     height: 40.0,
                                ),
                                   SizedBox(width: 10.0,), 
                                     new Image(
                                          image: AssetImage(AppText.facebookicon),
                                          height: 40.0,
                                          ), 
                                      ],
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
