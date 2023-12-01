import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/custom_button.dart';

class SelectsavedItemWidget extends StatefulWidget {
  const SelectsavedItemWidget({super.key});

  @override
  State<SelectsavedItemWidget> createState() => _SelectsavedItemWidgetState();
}

class _SelectsavedItemWidgetState extends State<SelectsavedItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgComputer,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            margin: getMargin(
              top: 54,
              bottom: 54,
            ),
          ),
          Container(
            margin: getMargin(
              left: 41,
            ),
            padding: getPadding(
              all: 10,
            ),
            decoration: AppDecoration.cardBg.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL20,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle12103112x1125,
                  height: getSize(
                    112,
                  ),
                  width: getSize(
                    112,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      15,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 10,
                    top: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: getHorizontalSize(
                          144,
                        ),
                        child: Text(
                          "",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular12WhiteA700,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 6,
                        ),
                        child: Text(
                          "",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular12Bluegray30001,
                        ),
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          30,
                        ),
                        width: getHorizontalSize(
                          119,
                        ),
                        text: "Watch Now",
                        margin: getMargin(
                          top: 17,
                        ),
                        shape: ButtonShape.circleBorder15,
                        padding: ButtonPadding.paddingAll8,
                        fontStyle: ButtonFontStyle.poppinsRegular12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
