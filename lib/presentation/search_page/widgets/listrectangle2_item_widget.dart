import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';


class Listrectangle2ItemWidget extends StatelessWidget {
  const Listrectangle2ItemWidget({super.key});



  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: ImageConstant.imgRectangle12078135x981,
          height: getVerticalSize(
            135,
          ),
          width: getHorizontalSize(
            98,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              10,
            ),
          ),
          margin: getMargin(
            right: 10,
          ),
        ),
      ),
    );
  }
}
