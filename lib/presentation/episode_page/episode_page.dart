import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/custom_icon_button.dart';

class EpisodePage extends StatefulWidget {
  const EpisodePage({super.key});

  @override
  State<EpisodePage> createState() => _EpisodePageState();
}

class _EpisodePageState extends State<EpisodePage>
    with AutomaticKeepAliveClientMixin<EpisodePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Container(
                          margin: getMargin(left: 24, top: 28, right: 24),
                          padding: getPadding(all: 10),
                          decoration: AppDecoration.fillWhiteA7005e.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: getSize(131),
                                    width: getSize(131),
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle12046131x131,
                                              height: getSize(131),
                                              width: getSize(131),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(15)),
                                              alignment: Alignment.center),
                                          CustomIconButton(
                                              height: 40,
                                              width: 40,
                                              margin: getMargin(right: 42),
                                              shape: IconButtonShape
                                                  .circleBorder20,
                                              alignment: Alignment.centerRight,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgFolderRed700))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 11, top: 4, bottom: 6),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text("Trailer",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium14WhiteA700),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowdown,
                                                        height: getSize(16),
                                                        width: getSize(16),
                                                        margin: getMargin(
                                                            left: 97,
                                                            bottom: 4))
                                                  ])),
                                          Container(
                                              width: getHorizontalSize(153),
                                              margin: getMargin(top: 11),
                                              child: Text(
                                                  "Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth, Aladdin tries to find...",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Bluegray10001))
                                        ]))
                              ]))
                    ])))));
  }
}
