// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/theme/app_style.dart';

class AppbarTitle extends StatelessWidget {
  final String text;

  final EdgeInsetsGeometry? margin;

  final Function? onTap;
  const AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPoppinsMedium18.copyWith(
            color: ColorConstant.whiteA700,
          ),
        ),
      ),
    );
  }
}
