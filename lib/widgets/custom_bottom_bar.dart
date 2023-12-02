// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/core/utils/image_constant.dart';
import 'package:flix/theme/app_style.dart';
import 'package:flix/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  final Function(BottomBarEnum)? onChanged;
  const CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgTrash,
      title: "Home",
      type: BottomBarEnum.home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearchGray400,
      title: "Search",
      type: BottomBarEnum.search,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBookmarkGray400,
      title: "Saved",
      type: BottomBarEnum.saved,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgDownload,
      title: "Downloads",
      type: BottomBarEnum.downloads,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUserGray400,
      title: "Me",
      type: BottomBarEnum.me,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.gray900,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].icon,
                  height:  (
                    24
                  ),
                  width:  (
                    24
                  ),
                  color: ColorConstant.gray400,
                ),
                Text(
                  bottomMenuList[index].title ?? "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular10Gray400.copyWith(
                    color: ColorConstant.gray400,
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].icon,
                  height:  (
                    24
                  ),
                  width:  (
                    24
                  ),
                  color: ColorConstant.whiteA700,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 1,
                  ),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10.copyWith(
                      color: ColorConstant.whiteA700,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  home,
  search,
  saved,
  downloads,
  me,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, this.title, required this.type});

  String icon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
