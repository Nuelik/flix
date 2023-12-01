import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/custom_button.dart';

class SavedItemWidget extends StatelessWidget {
  const SavedItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 10,
        bottom: 10,
      ),
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              top: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: getHorizontalSize(
                            146,
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
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgOptionWhiteA700,
                      height: getVerticalSize(
                        12,
                      ),
                      width: getHorizontalSize(
                        2,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 2,
                        bottom: 44,
                      ),
                    ),
                  ],
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
    );
  }
}
