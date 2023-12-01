// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/core/utils/size_utils.dart';
import 'package:flutter/material.dart';


class CustomDropDown extends StatelessWidget {

 final DropDownVariant? variant;

 final DropDownFontStyle? fontStyle;

 final Alignment? alignment;

 final double? width;

 final EdgeInsetsGeometry? margin;

 final FocusNode? focusNode;

 final Widget? icon;

 final String? hintText;

 final Widget? prefix;

 final BoxConstraints? prefixConstraints;

 final List<String>? items;

final  Function(String)? onChanged;

 final FormFieldValidator<String>? validator;
  const CustomDropDown({
    Key? key,
    this.variant,
    this.fontStyle,
    this.alignment,
    this.width,
    this.margin,
    this.focusNode,
    this.icon,
    this.hintText,
    this.prefix,
    this.prefixConstraints,
    this.items,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildDropDownWidget(),
          )
        : _buildDropDownWidget();
  }

  _buildDropDownWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: DropdownButtonFormField(
        focusNode: focusNode,
        icon: icon,
        style: _setFontStyle(),
        decoration: _buildDecoration(),
        items: items?.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList(),
        onChanged: (value) {
          onChanged!(value.toString());
        },
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      filled: _setFilled(),
      isDense: true,
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.50,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case DropDownVariant.none:
        return InputBorder.none;
      default:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.whiteA7006c,
          ),
        );
    }
  }

  _setFilled() {
    switch (variant) {
      case DropDownVariant.underLineWhiteA7006c:
        return false;
      case DropDownVariant.none:
        return false;
      default:
        return false;
    }
  }
}

enum DropDownVariant {
  none,
  underLineWhiteA7006c,
}
enum DropDownFontStyle {
  poppinsMedium14WhiteA700,
}
