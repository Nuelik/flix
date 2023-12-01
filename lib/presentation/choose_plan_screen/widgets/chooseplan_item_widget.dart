// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/core/utils/size_utils.dart';
import 'package:flix/theme/app_decoration.dart';
import 'package:flix/theme/app_style.dart';
import 'package:flix/widgets/custom_button.dart';

class ChooseplanItemWidget extends StatelessWidget {
  const ChooseplanItemWidget({
    Key? key,
    this.onTapSubscribeplan,
  }) : super(key: key);

  final VoidCallback? onTapSubscribeplan;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 25,
          top: 22,
          right: 25,
          bottom: 22,
        ),
        decoration: AppDecoration.cardBg.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14WhiteA700,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Text(
                          "Including tax and auto-renew",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular10Bluegray10003,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                      bottom: 4,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "50",
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                25,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: "/week",
                            style: TextStyle(
                              color: ColorConstant.blueGray100,
                              fontSize: getFontSize(
                                10,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              height: getVerticalSize(
                40,
              ),
              text: "Subscribe plan",
              margin: getMargin(
                top: 18,
              ),
              shape: ButtonShape.circleBorder20,
              padding: ButtonPadding.paddingAll8,
              fontStyle: ButtonFontStyle.poppinsRegular14WhiteA700,
              onTap: () {
                onTapSubscribeplan!();
              },
            ),
          ],
        ),
      ),
    );
  }
}
