import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/presentation/downloaded_tab_container_page/downloaded_tab_container_page.dart';
import 'package:flix/presentation/home_page/home_page.dart';
import 'package:flix/presentation/profile_page/profile_page.dart';
import 'package:flix/presentation/saved_page/saved_page.dart';
import 'package:flix/presentation/search_page/search_page.dart';
import 'package:flix/widgets/custom_bottom_bar.dart';

class SavedEmptyScreen extends StatefulWidget {
  const SavedEmptyScreen({super.key});

  @override
  State<SavedEmptyScreen> createState() => _SavedEmptyScreenState();
}

class _SavedEmptyScreenState extends State<SavedEmptyScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 59,
            top: 12,
            right: 59,
            bottom: 12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Save",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium18,
              ),
              const Spacer(),
              CustomImageView(
                svgPath: ImageConstant.imgMaskgroup1,
                height: getSize(
                  184,
                ),
                width: getSize(
                  184,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 30,
                ),
                child: Text(
                  "Not Save",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                  bottom: 179,
                ),
                child: Text(
                  "Let's find and download your favorite video",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular12Bluegray10001,
                ),
              ),
            ],
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
}
