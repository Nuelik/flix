import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:flix/widgets/app_bar/appbar_title.dart';

class NoNotificationScreen extends StatelessWidget {
  const NoNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: AppBar(
              elevation: 0,
              toolbarHeight: getVerticalSize(51),
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              leadingWidth: 60,
              leading: AppbarIconbutton1(
                  svgPath: ImageConstant.imgArrowleftWhiteA700,
                  margin: getMargin(left: 25, top: 8, bottom: 8),
                  onTap: () {
                    onTapArrowleft3(context);
                  }),
              centerTitle: true,
              title: const AppbarTitle(text: "Notifications"),
            ),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 59, top: 178, right: 59),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgMaskgroup2,
                          height: getSize(184),
                          width: getSize(184)),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("No Notification",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16)),
                      Padding(
                          padding: getPadding(top: 11, bottom: 5),
                          child: Text(
                              "Notifications that we send will appear here",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12Bluegray10001))
                    ]))));
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
