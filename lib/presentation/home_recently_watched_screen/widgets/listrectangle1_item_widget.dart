import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';

class Listrectangle1ItemWidget extends StatelessWidget {
  const Listrectangle1ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: ImageConstant.imgRectangle5178x1241,
          height: getVerticalSize(
            178,
          ),
          width: getHorizontalSize(
            124,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              10,
            ),
          ),
          margin: getMargin(
            right: 15,
          ),
        ),
      ),
    );
  }
}
