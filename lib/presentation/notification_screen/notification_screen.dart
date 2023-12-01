import '../notification_screen/widgets/notification_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:flix/widgets/app_bar/appbar_title.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: AppBar(
              elevation: 0,
              toolbarHeight: getVerticalSize(51),
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              leadingWidth: 60,
              leading: AppbarIconbutton1(
                  svgPath: ImageConstant.imgArrowleftWhiteA700,
                  margin: getMargin(left: 25, top: 8, bottom: 8),
                  onTap: () {
                    onTapArrowleft2(context);
                  }),
              centerTitle: true,
              title: const AppbarTitle(text: "Notifications"),
            ),
            body: Padding(
                padding: getPadding(left: 25, top: 23, right: 25, bottom: 80),
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16));
                    },
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return const NotificationItemWidget();
                    }))));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
