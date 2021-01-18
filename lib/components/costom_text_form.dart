import 'package:bank_soal/utils/style.dart';
import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextForm extends StatelessWidget {
  final String labelText;
  final Function onTap;
  final ValueChanged<String> onChanged;
  final Function onEditingComplete;
  final bool obscureText;
  final TextInputType textInputType;
  final Function(String) onSaved;
  final bool autocorrect;
  final FormFieldValidator<String> validator;
  final String errorText;
  final String initialValue;
  final TextEditingController controller;
  final int maxLines;
  final bool autovalidate;
  final String hintText;
  final TextInputAction textInputAction;
  final Widget suffix;
  final Widget suffixIcon;
  final Widget prefixIcon;

  const CustomTextForm({
    Key key,
    @required this.labelText,
    this.onTap,
    this.onChanged,
    this.onEditingComplete,
    this.textInputType,
    this.onSaved,
    this.autocorrect = false,
    this.obscureText = false,
    this.validator,
    this.errorText,
    this.initialValue,
    this.controller,
    this.maxLines = 1,
    this.autovalidate = false,
    this.hintText,
    this.textInputAction,
    this.suffix,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        textInputAction: textInputAction,
        maxLines: maxLines,
        controller: controller,
        initialValue: initialValue,
        onTap: onTap,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        cursorColor: Get.theme.primaryColor,
        style: inputFieldTextStyle,
        obscureText: obscureText,
        keyboardType: textInputType,
        onSaved: onSaved,
        autocorrect: autocorrect,
        validator: validator,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          suffix: suffix,
          prefixIcon: prefixIcon,
          hintText: hintText,
          errorText: errorText,
          labelText: labelText,
          hintStyle: inputFieldHintTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          border: inputFieldDefaultBorderStyle,
          enabledBorder: inputFieldDefaultBorderStyle,
        ),
      ),
    );
  }
}
