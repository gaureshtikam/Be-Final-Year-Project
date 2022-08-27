import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedFormInputField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final ValueChanged<String> onChanged;
  const RoundedFormInputField({
    Key key,
    this.hintText,
    this.onChanged,
    this.labelText, TextAlign textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        textAlign: TextAlign.center,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
