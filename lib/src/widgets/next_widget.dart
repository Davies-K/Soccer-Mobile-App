import 'package:flutter/material.dart';
import 'package:soccer_app/src/AppConfig/app_config.dart';

class NextWidget extends StatelessWidget {
  final VoidCallback? onNextTapped;
  const NextWidget({Key? key, this.onNextTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onNextTapped,
      child: Text("Next",
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: AppColors.appGreen, fontSize: 18)),
    );
  }
}
