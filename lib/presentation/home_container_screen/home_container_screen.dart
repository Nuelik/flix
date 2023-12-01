import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/presentation/downloaded_tab_container_page/downloaded_tab_container_page.dart';
import 'package:flix/presentation/home_page/home_page.dart';
import 'package:flix/presentation/profile_page/profile_page.dart';
import 'package:flix/presentation/saved_page/saved_page.dart';
import 'package:flix/presentation/search_page/search_page.dart';
import 'package:flix/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends StatefulWidget {
  const HomeContainerScreen({super.key});

  @override
  State<HomeContainerScreen> createState() => _HomeContainerScreenState();
}

class _HomeContainerScreenState extends State<HomeContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: const Duration(seconds: 0))),
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
}
