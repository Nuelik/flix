import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';

class Listall1ItemWidget extends StatelessWidget {
  const Listall1ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            81,
          ),
          margin: getMargin(
            right: 8,
          ),
          padding: getPadding(
            left: 30,
            top: 4,
            right: 33,
            bottom: 4,
          ),
          decoration: AppDecoration.txtStyle.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder14,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsRegular12WhiteA700,
          ),
        ),
      ),
    );
  }
}
