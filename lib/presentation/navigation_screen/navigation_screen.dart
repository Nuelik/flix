import 'package:flix/presentation/screens/downloads_page/downloads_page.dart';
import 'package:flix/presentation/screens/home_page/home_page.dart';
import 'package:flix/presentation/screens/me/me.dart';
import 'package:flix/presentation/screens/saved_page/saved_page.dart';
import 'package:flix/presentation/screens/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/core/utils/image_constant.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int selectedIndex = 0;
  List<Widget> buildScreens = [
    const HomePage(),
    const SearchPage(),
    const SavedPage(),
    const DownloadsPage(),
    const Me(),
  ];

  // List<String> textIcons = ["Home", "Search", "Saved", "Downloads", "Me"];

  // List<String> imageIcons = [
  //   ImageConstant.imgTrash,
  //   ImageConstant.imgSearchGray400,
  //   ImageConstant.imgBookmarkGray400,
  //   ImageConstant.imgDownload,
  //   ImageConstant.imgUserGray400
  // ];
  DateTime timeBackPressed = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final differeance = DateTime.now().difference(timeBackPressed);
        timeBackPressed = DateTime.now();
        if (differeance >= const Duration(milliseconds: 700)) {
          const String msg = 'Press the back button to exit';
          Fluttertoast.showToast(
            msg: msg,
          );
          return false;
        } else {
          Fluttertoast.cancel();
          SystemNavigator.pop();
          return true;
        }
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          systemNavigationBarColor: ColorConstant.black900,
          statusBarColor: ColorConstant.black900,
        ),
        child: Scaffold(
          body: buildScreens[selectedIndex],
          bottomNavigationBar: FlashyTabBar(
            backgroundColor: ColorConstant.gray900,
            animationCurve: Curves.linear,
            selectedIndex: selectedIndex,
            iconSize: 25,
            showElevation: false, // use this to remove appBar's elevation
            onItemSelected: (index) => setState(() {
              selectedIndex = index;
            }),
            items: [
              FlashyTabBarItem(
                icon: SvgPicture.asset(
                  ImageConstant.imgTrash,
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                      ColorConstant.whiteA700, BlendMode.srcOut),
                ),
                title: const Text(
                  'Home', style: TextStyle(color: Colors.white),
                ),
              ),
              FlashyTabBarItem(
                icon: SvgPicture.asset(
                  ImageConstant.imgSearchGray400,
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                      ColorConstant.whiteA700, BlendMode.srcOut),
                ),
                title: const Text(
                  'Search', style: TextStyle(color: Colors.white,),
                ),
              ),
              FlashyTabBarItem(
                icon: SvgPicture.asset(
                  ImageConstant.imgBookmarkGray400,
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                      ColorConstant.whiteA700, BlendMode.srcOut),
                ),
                title: const Text(
                  'Saved', style: TextStyle(color: Colors.white,),
                  ),
              ),
              FlashyTabBarItem(
                icon: SvgPicture.asset(
                  ImageConstant.imgDownload,
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                      ColorConstant.whiteA700, BlendMode.srcOut),
                ),
                title: const Text(
                  'Downloads', style: TextStyle(color: Colors.white,),
                ),
              ),
              FlashyTabBarItem(
                icon: SvgPicture.asset(
                  ImageConstant.imgUserGray400,
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                      ColorConstant.whiteA700, BlendMode.srcOut),
                ),
                title: const Text(
                  'Me', style: TextStyle(color: Colors.white,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
