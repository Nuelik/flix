import 'package:flix/core/utils/size_utils.dart';
import 'package:flix/theme/app_style.dart';

import '../about_page/widgets/about_item_widget.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage>
    with AutomaticKeepAliveClientMixin<AboutPage> {
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
                      Padding(
                          padding: getPadding(left: 16, top: 24),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(right: 105),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Genre",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular10)),
                                          Text("Language text",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular10)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 5),
                                    child: Row(children: [
                                      Text("Adventure, Comedy, Family",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular12),
                                      Padding(
                                          padding: getPadding(left: 30),
                                          child: Text("English",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterRegular12))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 13, right: 135),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Year",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterRegular10),
                                          Text("Country",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular10)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 4, right: 95),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("2019",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterRegular12),
                                          Text("United States",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular12)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Text("Actors",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular10)),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                        height: getVerticalSize(141),
                                        child: ListView.separated(
                                            padding: getPadding(top: 14),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(10));
                                            },
                                            itemCount: 4,
                                            itemBuilder: (context, index) {
                                              return const AboutItemWidget();
                                            })))
                              ]))
                    ])))));
  }
}
