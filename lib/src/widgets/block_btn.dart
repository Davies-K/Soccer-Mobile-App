import 'package:flutter/material.dart';

class BlockBtn extends StatelessWidget {
  final Widget? preffixWidget;
  final VoidCallback? onBtnTap;
  final String btnTitle;
  final Color? textColor;
  final Color? btnColor;
  const BlockBtn(
      {Key? key,
      this.preffixWidget,
      this.onBtnTap,
      required this.btnTitle,
      this.btnColor,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onBtnTap,
      child: Container(
          color:
              btnColor ?? Theme.of(context).buttonTheme.colorScheme!.onSurface,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                preffixWidget ?? SizedBox.shrink(),
                SizedBox(width: 5),
                Text(" $btnTitle",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: textColor!))
              ])),
    );
  }
}
