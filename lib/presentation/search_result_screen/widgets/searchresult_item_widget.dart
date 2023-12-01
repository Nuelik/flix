import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';

class SearchresultItemWidget extends StatelessWidget {
  const SearchresultItemWidget({super.key});

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
