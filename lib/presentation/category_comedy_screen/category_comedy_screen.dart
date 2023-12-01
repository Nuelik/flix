import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/core/utils/image_constant.dart';
import 'package:flix/core/utils/size_utils.dart';
import 'package:flix/widgets/custom_image_view.dart';
import '../category_comedy_screen/widgets/gridrectangle_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flix/widgets/app_bar/appbar_title.dart';
import 'package:flix/widgets/custom_icon_button.dart';

class CategoryComedyScreen extends StatelessWidget {
  const CategoryComedyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: getVerticalSize(49),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          leadingWidth: 51,
          leading: CustomIconButton(
              height: 35,
              width: 35,
              margin: getMargin(left: 16, top: 7, bottom: 7),
              variant: IconButtonVariant.fillWhiteA70063,
              onTap: () {
                onTapBtnArrowleft(context);
              },
              child: CustomImageView(
                  svgPath: ImageConstant.imgArrowleftWhiteA700)),
          title: const AppbarTitle(text: "Comedy"),
          centerTitle: true,
        ),
        body: Padding(
          padding: getPadding(left: 16, top: 25, right: 15),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: getVerticalSize(141),
                crossAxisCount: 3,
                mainAxisSpacing: getHorizontalSize(20),
                crossAxisSpacing: getHorizontalSize(20)),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 12,
            itemBuilder: (context, index) {
              return const GridrectangleItemWidget();
            },
          ),
        ),
      ),
    );
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
