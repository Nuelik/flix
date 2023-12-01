import '../home_recently_watched_screen/widgets/listall1_item_widget.dart';
import '../home_recently_watched_screen/widgets/listrectangle1_item_widget.dart';
import '../home_recently_watched_screen/widgets/listrectanglesix_item_widget.dart';
import '../home_recently_watched_screen/widgets/sliderrectangleten_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/presentation/downloaded_tab_container_page/downloaded_tab_container_page.dart';
import 'package:flix/presentation/home_page/home_page.dart';
import 'package:flix/presentation/profile_page/profile_page.dart';
import 'package:flix/presentation/saved_page/saved_page.dart';
import 'package:flix/presentation/search_page/search_page.dart';
import 'package:flix/widgets/custom_bottom_bar.dart';

class HomeRecentlyWatchedScreen extends StatefulWidget {
  const HomeRecentlyWatchedScreen({super.key});

  @override
  State<HomeRecentlyWatchedScreen> createState() =>
      _HomeRecentlyWatchedScreenState();
}

class _HomeRecentlyWatchedScreenState extends State<HomeRecentlyWatchedScreen> {
  int silderIndex = 1;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: getVerticalSize(
                      297,
                    ),
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      silderIndex = index;
                    },
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index, realIndex) {
                    return const SliderrectangletenItemWidget();
                  },
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 10,
                  ),
                  child: Text(
                    "Last watched",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium14WhiteA700,
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(
                    171,
                  ),
                  child: ListView.separated(
                    padding: getPadding(
                      left: 16,
                      top: 11,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          10,
                        ),
                      );
                    },
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return const ListrectanglesixItemWidget();
                    },
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 24,
                  ),
                  child: Text(
                    "Categories",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold16,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: getVerticalSize(
                      41,
                    ),
                    child: ListView.separated(
                      padding: getPadding(
                        left: 16,
                        top: 13,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            8,
                          ),
                        );
                      },
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const Listall1ItemWidget();
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 17,
                      right: 17,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Most Popular",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold16,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 3,
                          ),
                          child: Text(
                            "See all",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular12WhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: getVerticalSize(
                      185,
                    ),
                    child: ListView.separated(
                      padding: getPadding(
                        left: 16,
                        top: 7,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            15,
                          ),
                        );
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return const Listrectangle1ItemWidget();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.home:
        return AppRoutes.homePage;
      case BottomBarEnum.saved:
        return AppRoutes.searchPage;
      case BottomBarEnum.downloads:
        return AppRoutes.downloadedTabContainerPage;
      case BottomBarEnum.me:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return const HomePage();
      case AppRoutes.searchPage:
        return const SearchPage();
      case AppRoutes.savedPage:
        return const SavedPage();
      case AppRoutes.downloadedTabContainerPage:
        return const DownloadedTabContainerPage();
      case AppRoutes.profilePage:
        return const ProfilePage();
      default:
        return const DefaultWidget();
    }
  }
}
