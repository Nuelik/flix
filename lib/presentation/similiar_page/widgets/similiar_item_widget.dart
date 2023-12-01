import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';

class SimiliarItemWidget extends StatelessWidget {
  const SimiliarItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: CustomImageView(
        imagePath: ImageConstant.imgImage1154x108,
        height: getVerticalSize(
          154,
        ),
        width: getHorizontalSize(
          108,
        ),
        radius: BorderRadius.circular(
          getHorizontalSize(
            10,
          ),
        ),
        margin: getMargin(
          right: 12,
        ),
      ),
    );
  }
}
