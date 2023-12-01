import '../setting_screen/widgets/setting_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:flix/widgets/app_bar/appbar_title.dart';
import 'package:flix/widgets/custom_icon_button.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
                    onTapArrowleft6(context);
                  }),
              centerTitle: true,
              title: const AppbarTitle(text: "Setting"),
            ),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 35, right: 15, bottom: 35),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapLanguage(context);
                          },
                          child: Container(
                              padding: getPadding(all: 10),
                              decoration: AppDecoration.cardBg.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Row(children: [
                                CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    variant: IconButtonVariant.searchBg,
                                    shape: IconButtonShape.circleBorder20,
                                    padding: IconButtonPadding.paddingAll4,
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgGlobeWhiteA700)),
                                Container(
                                    margin:
                                        getMargin(left: 16, top: 3, bottom: 1),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Language",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsMedium12WhiteA700
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.12))),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text("English",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium10
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.1))))
                                        ]))
                              ]))),
                      Padding(
                          padding: getPadding(top: 16),
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return const SettingItemWidget();
                              }))
                    ]))));
  }

  onTapLanguage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.languageScreen);
  }

  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}
