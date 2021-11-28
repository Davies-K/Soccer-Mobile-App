import 'package:flutter/material.dart';
import 'package:soccer_app/src/AppConfig/app_config.dart';

class TeamSphere extends StatelessWidget {
  final double size;
  final String image;
  const TeamSphere({Key? key, required this.size, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.appGrey)),
        child:
            Center(child: Image(image: AssetImage(image), height: size / 2)));
  }
}
