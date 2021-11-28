import 'package:flutter/material.dart';
import 'package:soccer_app/src/AppConfig/app_config.dart';
import 'package:soccer_app/src/AppConfig/app_theme.dart';
import 'package:soccer_app/src/Data/data.dart';
import 'package:soccer_app/src/Utils/utils.dart';
import 'package:soccer_app/src/settings/settings_controller.dart';
import 'package:soccer_app/src/widgets/TeamSphere/team_sphere.dart';
import 'package:soccer_app/src/widgets/block_btn.dart';

class SplashScreen extends StatelessWidget {
  final SettingsController? controller;
  const SplashScreen({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
          flex: 2,
          child: Stack(
            children: [
              // top teams
              Positioned(
                  bottom: AppUtils.screenHeight * 0.19,
                  child: TeamSphere(
                      size: 80, image: DummyData.teams["dortmund"]!)),

              Positioned(
                  bottom: AppUtils.screenHeight * 0.12,
                  left: AppUtils.screenWidth * 0.15,
                  child:
                      TeamSphere(size: 60, image: DummyData.teams["chelsea"]!)),

              Positioned(
                  bottom: AppUtils.screenHeight * 0.15,
                  left: AppUtils.screenWidth * 0.35,
                  child: TeamSphere(
                      size: 80, image: DummyData.teams["man_city"]!)),

              Positioned(
                  bottom: AppUtils.screenHeight * 0.10,
                  right: 25,
                  child:
                      TeamSphere(size: 90, image: DummyData.teams["norwich"]!)),

              // bottom teams
              Positioned(
                  left: 20,
                  bottom: 0,
                  right: 20,
                  child:
                      TeamSphere(size: 110, image: DummyData.teams["bayern"]!)),
              Positioned(
                  right: AppUtils.screenWidth * 0.8,
                  bottom: 0,
                  child: TeamSphere(
                      size: 80, image: DummyData.teams["real_madrid"]!)),

              Positioned(
                  left: AppUtils.screenWidth * 0.85,
                  bottom: 0,
                  child:
                      TeamSphere(size: 80, image: DummyData.teams["arsenal"]!)),

              // white overlay
              AppTheme.isDarkMode(context)
                  ? Container()
                  : Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          gradient: LinearGradient(
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                              colors: [
                                Colors.white10,
                                Theme.of(context).scaffoldBackgroundColor
                              ],
                              stops: [
                                0.0,
                                1.0
                              ])),
                    )
            ],
          )),
      Expanded(
          flex: 6,
          child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: ListView(padding: EdgeInsets.zero, children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface),
                    textAlign: TextAlign.center,
                  ),
                ),
                AppSpaces.verticalSpace80,
                BlockBtn(
                  btnTitle: "Sign up with email",
                  btnColor: AppColors.appGreen,
                  textColor: Colors.white,
                ),
                AppSpaces.verticalSpace20,
                Text(
                  "or",
                  textAlign: TextAlign.center,
                ),
                AppSpaces.verticalSpace20,
                BlockBtn(
                  btnTitle: "Sign in with Apple",
                  textColor: Theme.of(context).colorScheme.onSecondary,
                  preffixWidget: Image(
                      image: AssetImage(
                          "assets/logos/${AppTheme.isDarkMode(context) ? "black_apple_logo.png" : "white_apple_logo.png"}"),
                      height: 15),
                ),
                AppSpaces.verticalSpace10,
                BlockBtn(
                  btnTitle: "Sign in with Facebook",
                  btnColor: AppColors.facebookBtnColor,
                  textColor: Colors.white,
                ),
                AppSpaces.verticalSpace40,
                Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
                AppSpaces.verticalSpace40,
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(children: [
                      Text(
                        "By continuing, you agree to Footy's ",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Terms of Service",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: " and ",
                              style: Theme.of(context).textTheme.bodyText2),
                          TextSpan(
                              text: "Privacy Policy",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold)),
                        ]),
                      )
                    ]))
              ])))
    ]));
  }
}
