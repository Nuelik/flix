// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/theme/app_style.dart';

// ignore: must_be_immutable
class AppbarSubtitle extends StatelessWidget {

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;
   AppbarSubtitle({
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
          style: AppStyle.txtPoppinsRegular12WhiteA700.copyWith(
            color: ColorConstant.whiteA700,
          ),
        ),
      ),
    );
  }
}
