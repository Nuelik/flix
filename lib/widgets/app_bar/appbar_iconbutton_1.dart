// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flix/widgets/custom_icon_button.dart';
import 'package:flix/widgets/custom_image_view.dart';

class AppbarIconbutton1 extends StatelessWidget {
  final String? imagePath;

  final String? svgPath;

  final EdgeInsetsGeometry? margin;

  final Function? onTap;
  const AppbarIconbutton1({
    Key? key,
    this.imagePath,
    this.svgPath,
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
        child: CustomIconButton(
          height: 35,
          width: 35,
          child: CustomImageView(
            svgPath: svgPath,
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}
