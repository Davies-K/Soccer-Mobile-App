import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soccer_app/src/AppConfig/app_config.dart';
import 'package:soccer_app/src/widgets/Forms/labelled_form_input.dart';
import 'package:soccer_app/src/widgets/Onboarding/app_auth_header.dart';
import 'package:soccer_app/src/widgets/Shared/default_app_header.dart';
import 'package:soccer_app/src/widgets/next_widget.dart';

import 'select_league.dart';

class SecureAccountScreen extends StatelessWidget {
  SecureAccountScreen({Key? key}) : super(key: key);

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwdController = new TextEditingController();
  TextEditingController _confPassController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView(
        children: [
          DefaultAppHeader(
            nextActionWidget: NextWidget(
              onNextTapped: () => Get.to(() => SelectLeague()),
            ),
          ),
          AppSpaces.verticalSpace40,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              AppAuthHeader(title: "Secure Account"),
              AppSpaces.verticalSpace80,
              LabelledFormField(
                  placeholder: "User Email",
                  keyboardType: "text",
                  controller: _emailController,
                  label: "Email"),
              SizedBox(height: 15),
              LabelledFormField(
                  placeholder: "Password",
                  keyboardType: "text",
                  controller: _passwdController,
                  label: "Create Password"),
              SizedBox(height: 15),
              LabelledFormField(
                  placeholder: "Password",
                  keyboardType: "text",
                  controller: _confPassController,
                  label: "Confirm Password"),
            ]),
          )
        ],
      ),
    ));
  }
}
