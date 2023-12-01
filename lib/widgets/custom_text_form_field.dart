// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextFormFieldPadding? padding;

  final TextFormFieldShape? shape;

  final TextFormFieldVariant? variant;

  final TextFormFieldFontStyle? fontStyle;

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? isObscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;
  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final FormFieldValidator<String>? validator;
  const CustomTextFormField({
    Key? key,
    this.padding,
    this.shape,
    this.variant,
    this.fontStyle,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.isObscureText,
    this.textInputAction,
    this.textInputType,
    this.maxLines,
    this.hintText,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
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
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.poppinsRegular16Bluegray100:
        return TextStyle(
          color: ColorConstant.blueGray100,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.50,
          ),
        );
      case TextFormFieldFontStyle.poppinsRegular12:
        return TextStyle(
          color: ColorConstant.blueGray10003,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.50,
          ),
        );
      case TextFormFieldFontStyle.poppinsMedium14WhiteA700:
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
      default:
        return TextStyle(
          color: ColorConstant.blueGray100,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.50,
          ),
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.searchBg:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.cardBg:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.underLineWhiteA7006c:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.whiteA7006c,
          ),
        );
      case TextFormFieldVariant.none:
        return InputBorder.none;
      default:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.whiteA70087,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.searchBg:
        return ColorConstant.blueGray80001;
      case TextFormFieldVariant.cardBg:
        return ColorConstant.gray900;
      default:
        return null;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.underLineWhiteA70087:
        return false;
      case TextFormFieldVariant.searchBg:
        return true;
      case TextFormFieldVariant.cardBg:
        return true;
      case TextFormFieldVariant.underLineWhiteA7006c:
        return false;
      case TextFormFieldVariant.none:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.paddingAll10:
        return getPadding(
          all: 11,
        );
      case TextFormFieldPadding.paddingT24:
        return getPadding(
          top: 25,
          bottom: 25,
        );
      default:
        return getPadding(
          top: 1,
          bottom: 1,
        );
    }
  }
}

enum TextFormFieldPadding {
  fillWhiteA70063,
  paddingAll10,
  paddingT24,
}

enum TextFormFieldShape {
  roundedBorder20,
}

enum TextFormFieldVariant {
  none,
  underLineWhiteA70087,
  searchBg,
  cardBg,
  underLineWhiteA7006c,
}

enum TextFormFieldFontStyle {
  poppinsRegular14Bluegray100,
  poppinsRegular16Bluegray100,
  poppinsRegular12,
  poppinsMedium14WhiteA700,
}
