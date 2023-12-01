// ignore_for_file: must_be_immutable

import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final CheckboxFontStyle? fontStyle;

  final Alignment? alignment;

  final bool? isRightCheck;

  final double? iconSize;

  bool? value;

  final Function(bool)? onChange;

  final String? text;

  final double? width;

  final EdgeInsetsGeometry? margin;
  CustomCheckbox({
    Key? key,
    this.fontStyle,
    this.alignment,
    this.isRightCheck,
    this.iconSize,
    this.value,
    this.onChange,
    this.text,
    this.width,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildCheckboxWidget(),
          )
        : _buildCheckboxWidget();
  }

  _buildCheckboxWidget() {
    return InkWell(
      onTap: () {
        value = !(value!);
        onChange!(value!);
      },
      child: Container(
        width: width,
        margin: margin ?? EdgeInsets.zero,
        child: isRightCheck! ? getRightSideCheckbox() : getLeftSideCheckbox(),
      ),
    );
  }

  Widget getRightSideCheckbox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 8,
          ),
          child: getTextWidget(),
        ),
        getCheckboxWidget(),
      ],
    );
  }

  Widget getLeftSideCheckbox() {
    return Row(
      children: [
        getCheckboxWidget(),
        Padding(
          padding: const EdgeInsets.only(
            left: 8,
          ),
          child: getTextWidget(),
        ),
      ],
    );
  }

  Widget getTextWidget() {
    return Text(
      text ?? "",
      textAlign: TextAlign.center,
      style: _setFontStyle(),
    );
  }

  Widget getCheckboxWidget() {
    return SizedBox(
      height: iconSize,
      width: iconSize,
      child: Checkbox(
        value: value ?? false,
        onChanged: (value) {
          onChange!(value!);
        },
        checkColor: ColorConstant.whiteA700,
        activeColor: ColorConstant.whiteA700,
        side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(
            color: ColorConstant.whiteA700,
          ),
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case CheckboxFontStyle.poppinsMedium12WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.50,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700A2,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.50,
          ),
        );
    }
  }
}

enum CheckboxFontStyle {
 poppinsRegular12WhiteA700a2_1,
  poppinsMedium12WhiteA700
}
