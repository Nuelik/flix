// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

import 'package:flix/core/utils/color_constant.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hintText;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final bool? obscureText;
  final Widget? suffixIcon;
  const CustomTextFormField({
    Key? key,
    required this.controller,
    this.validator,
    required this.hintText,
    this.textInputAction,
    this.keyboardType,
    this.focusNode,
    this.obscureText,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: FocusNode(),
      controller: widget.controller,
      style: TextStyle(fontSize: 12, color: ColorConstant.blueGray100, fontWeight: FontWeight.w500,),
      cursorColor: Colors.black,
      validator: widget.validator,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText ?? false,
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: 12,
          color: ColorConstant.blueGray100,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: ColorConstant.blueGray100,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: ColorConstant.blueGray100,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: ColorConstant.blueGray100,
          ),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: ColorConstant.blueGray100,
          ),
          // borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
