import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/core/utils/image_constant.dart';
import 'package:flix/core/utils/size_utils.dart';
import 'package:flix/routes/app_routes.dart';
import 'package:flix/theme/app_decoration.dart';
import 'package:flix/theme/app_style.dart';
import 'package:flix/widgets/custom_image_view.dart';

import '../choose_plan_screen/widgets/chooseplan_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flix/widgets/custom_button.dart';
import 'package:flix/widgets/custom_icon_button.dart';
import 'package:flix/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChoosePlanScreen extends StatelessWidget {
  TextEditingController haveavouchercodeController = TextEditingController();

  ChoosePlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  padding: getPadding(
                                      left: 25, top: 7, right: 25, bottom: 7),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                            height: 35,
                                            width: 35,
                                            padding:
                                                IconButtonPadding.paddingAll4,
                                            onTap: () {
                                              onTapBtnClose(context);
                                            },
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .img0c2c6f25a3334d8595d91f22e636033f)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width: getHorizontalSize(191),
                                                margin: getMargin(top: 32),
                                                child: Text(
                                                    "Choose your favorite package here",
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtPoppinsMedium18))),
                                        SizedBox(
                                            width: double.maxFinite,
                                            child: Container(
                                                margin: getMargin(top: 25),
                                                padding: getPadding(
                                                    left: 25,
                                                    top: 24,
                                                    right: 25,
                                                    bottom: 24),
                                                decoration: AppDecoration.cardBg
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder20),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("Voucher",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium14WhiteA700),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 19),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                CustomTextFormField(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            184),
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    controller:
                                                                        haveavouchercodeController,
                                                                    hintText:
                                                                        "have a voucher code?",
                                                                    variant:
                                                                        TextFormFieldVariant
                                                                            .searchBg,
                                                                    padding:
                                                                        TextFormFieldPadding
                                                                            .paddingAll10,
                                                                    fontStyle:
                                                                        TextFormFieldFontStyle
                                                                            .poppinsRegular12,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .done),
                                                                CustomButton(
                                                                    height:
                                                                        getVerticalSize(
                                                                            40),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            81),
                                                                    text:
                                                                        "Apply",
                                                                    shape: ButtonShape
                                                                        .circleBorder20,
                                                                    padding:
                                                                        ButtonPadding
                                                                            .paddingAll8,
                                                                    fontStyle:
                                                                        ButtonFontStyle
                                                                            .poppinsRegular14WhiteA700)
                                                              ]))
                                                    ]))),
                                        Padding(
                                            padding:
                                                getPadding(top: 35, bottom: 12),
                                            child: ListView.separated(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(15));
                                                },
                                                itemCount: 3,
                                                itemBuilder: (context, index) {
                                                  return ChooseplanItemWidget(
                                                      onTapSubscribeplan: () {
                                                    onTapSubscribeplan(context);
                                                  });
                                                }))
                                      ]))))
                    ]))));
  }

  onTapSubscribeplan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentMethodScreen);
  }

  onTapBtnClose(BuildContext context) {
    Navigator.pop(context);
  }
}
