import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:flix/widgets/app_bar/appbar_title.dart';

class NoHistoryScreen extends StatelessWidget {
  const NoHistoryScreen({super.key});

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
                    onTapArrowleft5(context);
                  }),
              centerTitle: true,
              title: const AppbarTitle(text: "History"),
            ),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 178),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup427318934,
                          height: getSize(184),
                          width: getSize(184)),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("No History",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16)),
                      Padding(
                          padding: getPadding(top: 9, bottom: 5),
                          child: Text(
                              "There are currently no history to display",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12Bluegray10001))
                    ]))));
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}
