
import 'package:flutter/material.dart';

import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/custom_button.dart';
import 'package:flix/widgets/custom_checkbox.dart';

// ignore: must_be_immutable
class DownloadMoviePopUpDialog extends StatelessWidget {
  bool isCheckbox;

  bool isCheckbox1;

  bool isCheckbox2;
  DownloadMoviePopUpDialog({
    Key? key,
    this.isCheckbox = false,
    this.isCheckbox1 = false,
    this.isCheckbox2 = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        325,
      ),
      padding: getPadding(
        left: 30,
        top: 34,
        right: 30,
        bottom: 34,
      ),
      decoration: AppDecoration.fillBluegray800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgFloatingicon,
            height: getSize(
              84,
            ),
            width: getSize(
              84,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                top: 19,
              ),
              child: Text(
                "Download File",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular20,
              ),
            ),
          ),
          CustomCheckbox(
            text: "Height (1080p)",
            value: isCheckbox,
            margin: getMargin(
              top: 35,
            ),
            fontStyle: CheckboxFontStyle.poppinsMedium12WhiteA700,
            onChange: (value) {
              isCheckbox = value;
            },
          ),
          CustomCheckbox(
            text: "Mid (720p)",
            value: isCheckbox1,
            margin: getMargin(
              top: 15,
            ),
            fontStyle: CheckboxFontStyle.poppinsRegular12WhiteA700a2_1,
            onChange: (value) {
              isCheckbox1 = value;
            },
          ),
          CustomCheckbox(
            text: "Low (360p)",
            value: isCheckbox2,
            margin: getMargin(
              top: 15,
            ),
            fontStyle: CheckboxFontStyle.poppinsRegular12WhiteA700a2_1,
            onChange: (value) {
              isCheckbox2 = value;
            },
          ),
          CustomButton(
            height: getVerticalSize(
              50,
            ),
            text: "Download",
            margin: getMargin(
              left: 22,
              top: 36,
              right: 22,
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
