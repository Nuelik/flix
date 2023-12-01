import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:flix/widgets/app_bar/appbar_title.dart';
import 'package:flix/widgets/app_bar/custom_app_bar.dart';
import 'package:flix/widgets/custom_search_view.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  TextEditingController groupController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(141),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup427318996,
                                height: getVerticalSize(141),
                                width: getHorizontalSize(375),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding:
                                        getPadding(left: 25, top: 8, right: 25),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(35),
                                              leadingWidth: 60,
                                              leading: AppbarIconbutton1(
                                                  svgPath: ImageConstant
                                                      .imgArrowleftWhiteA700,
                                                  margin: getMargin(left: 25),
                                                  onTap: () {
                                                    onTapArrowleft8(context);
                                                  }),
                                              centerTitle: true,
                                              title: const AppbarTitle(
                                                  text: "Help")),
                                          CustomSearchView(
                                              focusNode: FocusNode(),
                                              controller: groupController,
                                              hintText: "Get help",
                                              margin: getMargin(top: 23),
                                              variant: SearchViewVariant
                                                  .fillWhiteA7004c,
                                              prefix: Container(
                                                  margin: getMargin(
                                                      left: 18,
                                                      top: 15,
                                                      right: 14,
                                                      bottom: 15),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSearch)),
                                              prefixConstraints: BoxConstraints(
                                                  maxHeight:
                                                      getVerticalSize(50)),
                                              suffix: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                          15)),
                                                  child: IconButton(
                                                      onPressed: () {
                                                        groupController.clear();
                                                      },
                                                      icon: Icon(Icons.clear,
                                                          color: Colors
                                                              .grey.shade600))))
                                        ])))
                          ])),
                      Padding(
                          padding: getPadding(left: 25, top: 36),
                          child: Text("Top answers",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium14WhiteA700
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.14)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(
                                  left: 25, top: 18, right: 25, bottom: 5),
                              padding: getPadding(
                                  left: 20, top: 27, right: 20, bottom: 27),
                              decoration: AppDecoration.cardBg.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child: SizedBox(
                                                      width: getHorizontalSize(
                                                          206),
                                                      child: Text(
                                                          "How to contact customer support movistart",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium12WhiteA700
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.12))))),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightWhiteA700,
                                                  height: getSize(9),
                                                  width: getSize(9),
                                                  margin: getMargin(
                                                      left: 68,
                                                      top: 12,
                                                      bottom: 12))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 17),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.whiteA70063)),
                                    Padding(
                                        padding: getPadding(top: 23),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                  "How to unsubscribe from movistart",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium12WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.12))),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightWhiteA700,
                                                  height: getSize(9),
                                                  width: getSize(9),
                                                  margin: getMargin(
                                                      left: 58,
                                                      top: 4,
                                                      bottom: 3))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 25),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.whiteA70063)),
                                    Padding(
                                        padding: getPadding(top: 23),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                  "How to subscribe to movistart",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium12WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.12))),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightWhiteA700,
                                                  height: getSize(9),
                                                  width: getSize(9),
                                                  margin: getMargin(
                                                      left: 91,
                                                      top: 4,
                                                      bottom: 3))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 25),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.whiteA70063)),
                                    Padding(
                                        padding: getPadding(top: 23),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Can't watch movistart",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium12WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.12))),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightWhiteA700,
                                                  height: getSize(9),
                                                  width: getSize(9),
                                                  margin: getMargin(
                                                      left: 138,
                                                      top: 5,
                                                      bottom: 3))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 25),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.whiteA70063)),
                                    Padding(
                                        padding: getPadding(top: 23),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("What is movistart?",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium12WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.12))),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightWhiteA700,
                                                  height: getSize(9),
                                                  width: getSize(9),
                                                  margin: getMargin(
                                                      left: 160,
                                                      top: 4,
                                                      bottom: 3))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 25),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.whiteA70063))
                                  ])))
                    ]))));
  }

  onTapArrowleft8(BuildContext context) {
    Navigator.pop(context);
  }
}
