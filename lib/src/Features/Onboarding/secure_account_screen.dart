import 'package:flutter/material.dart';
import 'package:soccer_app/src/AppConfig/app_config.dart';
import 'package:soccer_app/src/widgets/Onboarding/app_auth_header.dart';
import 'package:soccer_app/src/widgets/Shared/default_app_header.dart';
import 'package:soccer_app/src/widgets/next_widget.dart';

class SecureAccountScreen extends StatelessWidget {
  const SecureAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView(
        children: [
          DefaultAppHeader(
            nextActionWidget: NextWidget(
                // onNextTapped: () => Get.to(()=> SecureAccountScreen()),
                ),
          ),
          AppSpaces.verticalSpace40,
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: AppAuthHeader(title: "Secure Account"),
          )
        ],
      ),
    ));
  }
}
