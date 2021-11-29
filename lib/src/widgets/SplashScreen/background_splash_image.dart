import 'package:flutter/material.dart';
import 'package:soccer_app/src/AppConfig/app_theme.dart';
import 'package:soccer_app/src/Data/data.dart';
import 'package:soccer_app/src/Utils/utils.dart';
import 'package:soccer_app/src/widgets/TeamSphere/team_sphere.dart';

class BackgroundSplashImage extends StatelessWidget {
  const BackgroundSplashImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // top teams
        Positioned(
            bottom: AppUtils.screenHeight * 0.19,
            child: TeamSphere(size: 80, image: DummyData.teams["dortmund"]!)),

        Positioned(
            bottom: AppUtils.screenHeight * 0.12,
            left: AppUtils.screenWidth * 0.15,
            child: TeamSphere(size: 60, image: DummyData.teams["chelsea"]!)),

        Positioned(
            bottom: AppUtils.screenHeight * 0.15,
            left: AppUtils.screenWidth * 0.35,
            child: TeamSphere(size: 80, image: DummyData.teams["man_city"]!)),

        Positioned(
            bottom: AppUtils.screenHeight * 0.10,
            right: 25,
            child: TeamSphere(size: 90, image: DummyData.teams["norwich"]!)),

        // bottom teams
        Positioned(
            left: 20,
            bottom: 0,
            right: 20,
            child: TeamSphere(size: 110, image: DummyData.teams["bayern"]!)),
        Positioned(
            right: AppUtils.screenWidth * 0.8,
            bottom: 0,
            child:
                TeamSphere(size: 80, image: DummyData.teams["real_madrid"]!)),

        Positioned(
            left: AppUtils.screenWidth * 0.85,
            bottom: 0,
            child: TeamSphere(size: 80, image: DummyData.teams["arsenal"]!)),

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
    );
  }
}
