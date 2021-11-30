import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soccer_app/src/AppConfig/app_config.dart';
import 'package:soccer_app/src/Features/Onboarding/secure_account_screen.dart';
import 'package:soccer_app/src/widgets/Forms/labelled_form_input.dart';
import 'package:soccer_app/src/widgets/Onboarding/app_auth_header.dart';
import 'package:soccer_app/src/widgets/Shared/default_app_header.dart';
import 'package:soccer_app/src/widgets/next_widget.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({Key? key}) : super(key: key);

  TextEditingController _nameController = new TextEditingController();
  TextEditingController _firstNameController = new TextEditingController();
  TextEditingController _lastNameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView(
        children: [
          DefaultAppHeader(
            nextActionWidget: NextWidget(
              onNextTapped: () => Get.to(() => SecureAccountScreen()),
            ),
          ),
          AppSpaces.verticalSpace40,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              AppAuthHeader(title: "Create Account"),
              AppSpaces.verticalSpace80,
              LabelledFormField(
                  placeholder: "Username",
                  keyboardType: "text",
                  controller: _nameController,
                  label: "User name"),
              SizedBox(height: 15),
              LabelledFormField(
                  placeholder: "Firstname",
                  keyboardType: "text",
                  controller: _firstNameController,
                  label: "First name"),
              SizedBox(height: 15),
              LabelledFormField(
                  placeholder: "Lastname",
                  keyboardType: "text",
                  controller: _lastNameController,
                  label: "Last name"),
            ]),
          )
        ],
      ),
    ));
  }
}
