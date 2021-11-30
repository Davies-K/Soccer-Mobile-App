import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soccer_app/src/AppConfig/app_config.dart';
import 'package:soccer_app/src/Features/Onboarding/select_teams.dart';
import 'package:soccer_app/src/widgets/Onboarding/app_auth_header.dart';
import 'package:soccer_app/src/widgets/Shared/default_app_header.dart';
import 'package:soccer_app/src/widgets/next_widget.dart';

class SelectLeague extends StatelessWidget {
  const SelectLeague({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView(children: [
              DefaultAppHeader(
                nextActionWidget: NextWidget(
                  onNextTapped: () => Get.to(() => SelectTeams()),
                ),
              ),
              AppSpaces.verticalSpace40,
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppAuthHeader(title: "Select \nFavourite Leagues"),
                        AppSpaces.verticalSpace80,
                      ]))
            ])));
  }
}
