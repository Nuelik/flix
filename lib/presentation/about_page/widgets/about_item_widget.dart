import 'package:flix/core/utils/image_constant.dart';
import 'package:flix/core/utils/size_utils.dart';
import 'package:flix/theme/app_decoration.dart';
import 'package:flix/theme/app_style.dart';
import 'package:flix/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

class AboutItemWidget extends StatelessWidget {
  const AboutItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: getVerticalSize(
            127,
          ),
          width: getHorizontalSize(
            104,
          ),
          margin: getMargin(
            right: 10,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle12050,
                height: getVerticalSize(
                  127,
                ),
                width: getHorizontalSize(
                  104,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    12,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: getPadding(
                    left: 15,
                    top: 10,
                    right: 15,
                    bottom: 10,
                  ),
                  decoration:
                      AppDecoration.gradientBlack9000001Bluegray900.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          52,
                        ),
                        margin: getMargin(
                          top: 17,
                        ),
                        child: Text(
                          "",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
