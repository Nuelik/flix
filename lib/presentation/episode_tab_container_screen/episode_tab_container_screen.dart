import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/presentation/about_page/about_page.dart';
import 'package:flix/presentation/episode_page/episode_page.dart';
import 'package:flix/presentation/similiar_page/similiar_page.dart';
import 'package:flix/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:flix/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:flix/widgets/app_bar/custom_app_bar.dart';
import 'package:flix/widgets/custom_button.dart';

class EpisodeTabContainerScreen extends StatefulWidget {
  const EpisodeTabContainerScreen({super.key});

  @override
  State<EpisodeTabContainerScreen> createState() =>
      _EpisodeTabContainerScreenState();
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}

class _EpisodeTabContainerScreenState extends State<EpisodeTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController episodeController;

  @override
  void initState() {
    super.initState();
    episodeController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(369),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(369),
                                        width: getHorizontalSize(374),
                                        decoration: AppDecoration.fillBlack900,
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: SizedBox(
                                                      height:
                                                          getVerticalSize(346),
                                                      width: getHorizontalSize(
                                                          374),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: SizedBox(
                                                                    height:
                                                                        getVerticalSize(
                                                                            332),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            374),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgImage6332x374,
                                                                              height: getVerticalSize(332),
                                                                              width: getHorizontalSize(374),
                                                                              alignment: Alignment.center),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Container(height: getVerticalSize(332), width: double.maxFinite, decoration: BoxDecoration(color: ColorConstant.deepPurpleA7000c)))
                                                                        ]))),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle10,
                                                                height:
                                                                    getVerticalSize(
                                                                        346),
                                                                width:
                                                                    getHorizontalSize(
                                                                        374),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 77,
                                                          right: 77,
                                                          bottom: 8),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "Disney’s Aladdin",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsSemiBold26),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 5,
                                                                        right:
                                                                            5),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "2019",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsRegular12Bluegray10002)),
                                                                      Container(
                                                                          height: getSize(
                                                                              3),
                                                                          width: getSize(
                                                                              3),
                                                                          margin: getMargin(
                                                                              left:
                                                                                  5,
                                                                              top:
                                                                                  8,
                                                                              bottom:
                                                                                  7),
                                                                          decoration: BoxDecoration(
                                                                              color: ColorConstant.blueGray10002,
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(1)))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  5,
                                                                              top:
                                                                                  1),
                                                                          child: Text(
                                                                              "Adventure, Comedy",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsRegular12Bluegray10002)),
                                                                      Container(
                                                                          height: getSize(
                                                                              3),
                                                                          width: getSize(
                                                                              3),
                                                                          margin: getMargin(
                                                                              left:
                                                                                  5,
                                                                              top:
                                                                                  8,
                                                                              bottom:
                                                                                  7),
                                                                          decoration: BoxDecoration(
                                                                              color: ColorConstant.blueGray10002,
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(1)))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  5),
                                                                          child: Text(
                                                                              "2h 8m",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsRegular12Bluegray10002))
                                                                    ]))
                                                          ])))
                                            ]))),
                                CustomAppBar(
                                    height: getVerticalSize(50),
                                    leadingWidth: 60,
                                    leading: AppbarIconbutton1(
                                        svgPath:
                                            ImageConstant.imgArrowleftWhiteA700,
                                        margin: getMargin(
                                            left: 25, top: 7, bottom: 8),
                                        onTap: () {
                                          onTapArrowleft(context);
                                        }),
                                    actions: [
                                      AppbarIconbutton2(
                                          svgPath: ImageConstant
                                              .imgBookmarkWhiteA7001,
                                          margin: getMargin(
                                              left: 25, top: 7, right: 8)),
                                      AppbarIconbutton2(
                                          svgPath:
                                              ImageConstant.imgReplyWhiteA700,
                                          margin: getMargin(
                                              left: 10, top: 7, right: 33))
                                    ])
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 17, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(40),
                                    width: getHorizontalSize(164),
                                    text: "Play",
                                    shape: ButtonShape.circleBorder20,
                                    padding: ButtonPadding.paddingT5,
                                    fontStyle: ButtonFontStyle
                                        .poppinsRegular14WhiteA700,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 11),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgPlayWhiteA7001))),
                                CustomButton(
                                    height: getVerticalSize(40),
                                    width: getHorizontalSize(164),
                                    text: "Download",
                                    margin: getMargin(left: 15),
                                    variant: ButtonVariant.fillWhiteA7005e,
                                    shape: ButtonShape.circleBorder20,
                                    padding: ButtonPadding.paddingT5,
                                    fontStyle: ButtonFontStyle
                                        .poppinsRegular14WhiteA700,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 10),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowdown)))
                              ])),
                      Container(
                          width: getHorizontalSize(316),
                          margin: getMargin(left: 29, top: 25, right: 29),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth, Aladdin tries to find a way to become a prince... ",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray10001,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "Read more",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600))
                              ]),
                              textAlign: TextAlign.center)),
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(
                                  left: 1, top: 11, right: 1, bottom: 5),
                              decoration: AppDecoration.fillBlack900,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: getVerticalSize(38),
                                        width: getHorizontalSize(292),
                                        child: TabBar(
                                            controller: episodeController,
                                            labelColor: ColorConstant.red700,
                                            labelStyle: TextStyle(
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500),
                                            unselectedLabelColor:
                                                ColorConstant.gray500Ab,
                                            unselectedLabelStyle: TextStyle(
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500),
                                            indicatorColor:
                                                ColorConstant.red700,
                                            tabs: const [
                                              Tab(
                                                  child: Text("Episode",
                                                      overflow: TextOverflow
                                                          .ellipsis)),
                                              Tab(
                                                  child: Text("Similiar",
                                                      overflow: TextOverflow
                                                          .ellipsis)),
                                              Tab(
                                                  child: Text("About",
                                                      overflow: TextOverflow
                                                          .ellipsis))
                                            ])),
                                    SizedBox(
                                        height: getVerticalSize(200),
                                        child: TabBarView(
                                            controller: episodeController,
                                            children: const [
                                              EpisodePage(),
                                              SimiliarPage(),
                                              AboutPage()
                                            ]))
                                  ])))
                    ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}