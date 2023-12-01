import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/custom_icon_button.dart';

class NotificationItemWidget extends StatelessWidget {
  const NotificationItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 13,
        right: 15,
        bottom: 13,
      ),
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 30,
            width: 30,
            margin: getMargin(
              top: 1,
              bottom: 32,
            ),
            variant: IconButtonVariant.fillWhiteA70063,
            padding: IconButtonPadding.paddingAll4,
            child: CustomImageView(
              svgPath: ImageConstant.imgTicketWhiteA700,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: getHorizontalSize(
                    171,
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
                    top: 9,
                  ),
                  child: Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsLight10,
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
