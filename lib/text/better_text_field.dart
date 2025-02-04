import 'package:better_widget_flutter/better_widget_flutter.dart';
import 'package:flutter/material.dart';

import 'better_text_field_decoration.dart';


class BetterTextField extends StatelessWidget {
  BetterTextField({
    super.key,
    this.initialValue,
    this.enable = true,
    required this.onChanged,
    this.keyboardType,
    this.textInputAction,
    required this.hintText,
    this.maxLines,
    this.suffixIcon,
    this.maxLength,
    this.inputFormatters,
    this.hasShadow = true,
    this.borderColor,
    this.fillColor,
    this.onFieldSubmitted,
    this.textController,
  });

  factory BetterTextField.showOnly({
    required hintText,
    required suffixIcon,
  }) {
    return BetterTextField(
        initialValue: null,
        onChanged: null,
        hintText: hintText,
        enable: false,
        suffixIcon: suffixIcon);
  }

  final initialValue;
  final enable;
  final Function(String value)? onChanged;
  final Function(String value)? onFieldSubmitted;
  final hintText;
  final textInputAction;
  final keyboardType;
  final maxLines;
  final suffixIcon;
  final maxLength;
  final inputFormatters;
  final textController;
  final bool hasShadow;
  final Color? borderColor;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Theme.of(context).primaryColor,
      initialValue: initialValue,
      controller: textController,
      enabled: enable,
      onChanged: enable == false ? null : (value) => onChanged!(value),
      decoration: getTextFieldDecoration(
        hintText: hintText,
        hasShadow: hasShadow,
        borderColor: borderColor,
        suffixIcon: suffixIcon,
        fillColor: fillColor,
      ),
      style:
      textDisplaySmall(color: Colors.black54, fontWeight: FontWeight.w400),
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      maxLines: maxLines,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
