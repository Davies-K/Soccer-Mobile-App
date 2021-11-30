import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:soccer_app/src/AppConfig/app_config.dart';

class LabelledFormField extends StatefulWidget {
  final String label;
  final String placeholder;
  final String? value;
  final String keyboardType;
  final TextEditingController controller;
  const LabelledFormField(
      {Key? key,
      required this.placeholder,
      required this.keyboardType,
      required this.controller,
      required this.label,
      this.value})
      : super(key: key);

  @override
  _LabelledFormFieldState createState() => _LabelledFormFieldState();
}

class _LabelledFormFieldState extends State<LabelledFormField> {
  bool showLabel = false;
  late FocusNode _focusNode;
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();
    _focusNode = new FocusNode();
    _obscureText = (widget.placeholder == "Password") ? true : false;
    // listen to focus changes
    _focusNode.addListener(() {
      setState(() {
        showLabel = _focusNode.hasFocus ? true : false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSpaces.verticalSpace10,
        AnimatedOpacity(
          opacity: 1.0,
          duration: const Duration(milliseconds: 500),
          child: Text(widget.label,
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontSize: 11)),
        ),
        TextFormField(
          controller: widget.controller,
          focusNode: _focusNode,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),

          keyboardType: widget.keyboardType == "text"
              ? TextInputType.text
              : TextInputType.number,
          //initialValue: initialValue,
          obscureText: widget.placeholder == 'Password' ||
                  widget.placeholder == 'Choose a password'
              ? _obscureText
              : false,

          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 0,
                vertical: 20,
              ),
              suffixIcon: widget.placeholder == "Password"
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          _obscureText ? "Show" : "Hide",
                          style: TextStyle(), textAlign: TextAlign.center,
                          //size: 15.0,
                        ),
                      ))
                  : InkWell(
                      onTap: () {
                        widget.controller.text = "";
                      },
                      child: Icon(FontAwesomeIcons.solidTimesCircle,
                          size: 18, color: AppColors.appGrey),
                    ),
              hintText: showLabel ? "" : widget.placeholder,
              hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 15,
                  ),
              filled: false,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.appGrey),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.appGreen),
              ),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green))),
        ),
      ],
    );
  }
}
