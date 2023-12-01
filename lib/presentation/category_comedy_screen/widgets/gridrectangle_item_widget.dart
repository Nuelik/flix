import 'package:flix/core/utils/size_utils.dart';
import 'package:flix/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/image_constant.dart';

class GridrectangleItemWidget extends StatelessWidget {
  const GridrectangleItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle12078140x102,
      height: getVerticalSize(
        140,
      ),
      width: getHorizontalSize(
        102,
      ),
      radius: BorderRadius.circular(
        getHorizontalSize(
          10,
        ),
      ),
    );
  }
}
