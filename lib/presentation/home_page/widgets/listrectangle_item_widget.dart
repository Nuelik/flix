// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flix/core/app_export.dart';

class ListrectangleItemWidget extends StatelessWidget {
  final VoidCallback? onTapImgRectangle;
  const ListrectangleItemWidget({
    Key? key,
    this.onTapImgRectangle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
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
        onTap: () {
          onTapImgRectangle?.call();
        },
      ),
    );
  }
}
