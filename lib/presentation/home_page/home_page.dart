// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flix/core/app_export.dart';

import '../home_page/widgets/listall_item_widget.dart';
import '../home_page/widgets/listrectangle_item_widget.dart';
import '../home_page/widgets/listrectanglefive_item_widget.dart';
import '../home_page/widgets/slidergroup427319005_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int silderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillBlack900,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            CarouselSlider.builder(
                                options: CarouselOptions(
                                    height: getVerticalSize(298),
                                    initialPage: 0,
                                    autoPlay: true,
                                    viewportFraction: 1.0,
                                    enableInfiniteScroll: false,
                                    scrollDirection: Axis.horizontal,
                                    onPageChanged: (index, reason) {
                                      silderIndex = index;
                                    }),
                                itemCount: 4,
                                itemBuilder: (context, index, realIndex) {
                                  return const Slidergroup427319005ItemWidget();
                                }),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 16, top: 20),
                                    child: Text("Catagories",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold16))),
                            SizedBox(
                                height: getVerticalSize(41),
                                child: ListView.separated(
                                    padding: getPadding(left: 16, top: 13),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(8));
                                    },
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return const ListallItemWidget();
                                    })),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 16, top: 17, right: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Most Popular",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold16),
                                          Padding(
                                              padding:
                                                  getPadding(top: 2, bottom: 3),
                                              child: Text("See all",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12WhiteA700))
                                        ]))),
                            SizedBox(
                                height: getVerticalSize(185),
                                child: ListView.separated(
                                    padding: getPadding(left: 16, top: 7),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(15));
                                    },
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return ListrectangleItemWidget(
                                          onTapImgRectangle: () {
                                        onTapImgRectangle(context);
                                      });
                                    })),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 16, top: 24, right: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Latest Movies",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold16),
                                          Padding(
                                              padding:
                                                  getPadding(top: 4, bottom: 1),
                                              child: Text("See all",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12WhiteA700))
                                        ]))),
                            SizedBox(
                                height: getVerticalSize(188),
                                child: ListView.separated(
                                    padding: getPadding(left: 16, top: 10),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(15));
                                    },
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return const ListrectanglefiveItemWidget();
                                    }))
                          ])))
                    ]))));
  }

  onTapImgRectangle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.episodeTabContainerScreen);
  }
}
