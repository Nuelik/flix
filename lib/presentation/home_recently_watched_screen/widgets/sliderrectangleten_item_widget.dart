import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';

class SliderrectangletenItemWidget extends StatelessWidget {
  const SliderrectangletenItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage6297x375,
      height: getVerticalSize(
        297,
      ),
      width: getHorizontalSize(
        375,
      ),
    );
  }
}
