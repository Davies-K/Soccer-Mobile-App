import 'package:flutter/material.dart';

class DefaultAppHeader extends StatelessWidget {
  final Widget? nextActionWidget;
  const DefaultAppHeader({Key? key, this.nextActionWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [BackButton(), nextActionWidget ?? SizedBox.shrink()]));
  }
}
