import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';

class ListrectanglefiveItemWidget extends StatelessWidget {
  const ListrectanglefiveItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle5178x1242,
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
    );
  }
}
