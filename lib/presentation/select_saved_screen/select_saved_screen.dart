import '../select_saved_screen/widgets/selectsaved_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/presentation/downloaded_tab_container_page/downloaded_tab_container_page.dart';
import 'package:flix/presentation/home_page/home_page.dart';
import 'package:flix/presentation/profile_page/profile_page.dart';
import 'package:flix/presentation/saved_page/saved_page.dart';
import 'package:flix/presentation/search_page/search_page.dart';
import 'package:flix/widgets/app_bar/appbar_subtitle.dart';
import 'package:flix/widgets/app_bar/appbar_title.dart';
import 'package:flix/widgets/custom_bottom_bar.dart';
import 'package:flix/widgets/custom_button.dart';
import 'package:flix/presentation/delete_from_saved_dialog/delete_from_saved_dialog.dart';

class SelectSavedScreen extends StatefulWidget {
  const SelectSavedScreen({super.key});

  @override
  State<SelectSavedScreen> createState() => _SelectSavedScreenState();
}

class _SelectSavedScreenState extends State<SelectSavedScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: AppBar(
                elevation: 0,
                toolbarHeight: getVerticalSize(50),
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                leadingWidth: 60,
                centerTitle: true,
                title: Padding(
                    padding: getPadding(left: 25),
                    child: Row(children: [
                      AppbarSubtitle(
                          text: "Mark All", margin: getMargin(top: 8)),
                      AppbarTitle(text: "Saved", margin: getMargin(left: 89))
                    ])),
                actions: [
                  AppbarSubtitle(
                      text: "Delete",
                      margin:
                          getMargin(left: 25, top: 20, right: 25, bottom: 11))
                ]),
            body: Container(
                height: getVerticalSize(637),
                width: double.maxFinite,
                padding: getPadding(top: 23, bottom: 23),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 16, bottom: 14),
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return const SelectsavedItemWidget();
                              }))),
                  CustomButton(
                      height: getVerticalSize(50),
                      width: getHorizontalSize(263),
                      text: "Delete",
                      margin: getMargin(bottom: 5),
                      variant: ButtonVariant.outlineBlack90019,
                      fontStyle: ButtonFontStyle.poppinsRegular16Red700_1,
                      onTap: () {
                        onTapDeleteOne(context);
                      },
                      alignment: Alignment.bottomCenter)
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.home:
        return AppRoutes.homePage;
      case BottomBarEnum.search:
        return AppRoutes.searchPage;
      case BottomBarEnum.saved:
        return AppRoutes.savedPage;
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

  onTapDeleteOne(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => const AlertDialog(
              content: DeleteFromSavedDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }
}
