import '../history_screen/widgets/history_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:flix/widgets/app_bar/appbar_title.dart';
import 'package:flix/presentation/history_delete_dialog/history_delete_dialog.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

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
                      onTapArrowleft4(context);
                    }),
                centerTitle: true,
                title: const AppbarTitle(text: "History")),
            body: Padding(
                padding: getPadding(left: 25, top: 23, right: 25),
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16));
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return HistoryItemWidget(onTapImgOverflowmenu: () {
                        onTapImgOverflowmenu(context);
                      });
                    }))));
  }

  onTapImgOverflowmenu(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => const AlertDialog(
            content: HistoryDeleteDialog(),
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.zero,
            insetPadding: EdgeInsets.only(left: 0)));
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
