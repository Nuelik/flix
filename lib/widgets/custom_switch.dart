// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatelessWidget {
  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final bool? value;

  final Function(bool)? onChanged;
  const CustomSwitch({
    Key? key,
    this.alignment,
    this.margin,
    this.value,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(20),
        width: getHorizontalSize(38),
        toggleSize: 16,
        borderRadius: getHorizontalSize(
          10.00,
        ),
        activeColor: ColorConstant.whiteA70075,
        activeToggleColor: ColorConstant.whiteA700,
        inactiveColor: ColorConstant.whiteA70063,
        inactiveToggleColor: ColorConstant.indigo100,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
