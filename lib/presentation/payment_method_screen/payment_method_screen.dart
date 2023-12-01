import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/custom_button.dart';
import 'package:flix/widgets/custom_icon_button.dart';
import 'package:flix/widgets/custom_radio_button.dart';
import 'package:flix/widgets/custom_text_form_field.dart';
import 'package:flix/presentation/payment_succesful_popup_dialog/payment_succesful_popup_dialog.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  TextEditingController vouchercodeController = TextEditingController();

  String radioGroup = "";

  String radioGroup1 = "";

  TextEditingController otherController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 7, right: 16, bottom: 7),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 35,
                          width: 35,
                          margin: getMargin(left: 9),
                          onTap: () {
                            onTapBtnArrowleft(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleftWhiteA700)),
                      Padding(
                          padding: getPadding(top: 34),
                          child: Text("Order Summary",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16)),
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 16),
                              padding: getPadding(
                                  left: 25, top: 17, right: 25, bottom: 17),
                              decoration: AppDecoration.cardBg.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 7),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("Premium weekly",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium14WhiteA700),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 4),
                                                        child: Text(
                                                            "Including tax and auto-renew",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular10Bluegray10003))
                                                  ]),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 5, bottom: 5),
                                                  child: Text("50",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium20))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 28),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomTextFormField(
                                                  width: getHorizontalSize(196),
                                                  focusNode: FocusNode(),
                                                  controller:
                                                      vouchercodeController,
                                                  hintText:
                                                      "have a voucher code?",
                                                  variant: TextFormFieldVariant
                                                      .searchBg,
                                                  padding: TextFormFieldPadding
                                                      .paddingAll10,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .poppinsRegular12),
                                              CustomButton(
                                                  height: getVerticalSize(40),
                                                  width: getHorizontalSize(81),
                                                  text: "Apply",
                                                  shape: ButtonShape
                                                      .circleBorder20,
                                                  padding:
                                                      ButtonPadding.paddingAll8,
                                                  fontStyle: ButtonFontStyle
                                                      .poppinsRegular14WhiteA700)
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 25),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.whiteA7006c,
                                            endIndent: getHorizontalSize(18))),
                                    Padding(
                                        padding: getPadding(top: 14),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 4, bottom: 1),
                                                  child: Text("Total",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium16)),
                                              Text("50",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium20)
                                            ]))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 38),
                          child: Text("Payment Method",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16)),
                      Container(
                          margin: getMargin(top: 17),
                          padding: getPadding(
                              left: 25, top: 20, right: 25, bottom: 20),
                          decoration: AppDecoration.cardBg.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgGoogle2,
                                    height: getSize(30),
                                    width: getSize(30),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding: getPadding(top: 6, bottom: 3),
                                    child: CustomRadioButton(
                                        width: getHorizontalSize(253),
                                        text: "Google Pay",
                                        value: "Google Pay",
                                        groupValue: radioGroup,
                                        margin: getMargin(top: 6, bottom: 3),
                                        fontStyle: RadioFontStyle
                                            .poppinsMedium14WhiteA700,
                                        isRightCheck: true,
                                        onChange: (value) {
                                          radioGroup = value;
                                        }))
                              ])),
                      Container(
                          margin: getMargin(top: 10),
                          padding: getPadding(
                              left: 25, top: 20, right: 25, bottom: 20),
                          decoration: AppDecoration.cardBg.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgMaskgroup,
                                    height: getSize(30),
                                    width: getSize(30),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding: getPadding(top: 6, bottom: 3),
                                    child: CustomRadioButton(
                                        width: getHorizontalSize(253),
                                        text: "Apple Pay",
                                        value: "Apple Pay",
                                        groupValue: radioGroup1,
                                        margin: getMargin(top: 6, bottom: 3),
                                        fontStyle: RadioFontStyle
                                            .poppinsMedium14WhiteA700,
                                        isRightCheck: true,
                                        onChange: (value) {
                                          radioGroup1 = value;
                                        }))
                              ])),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: otherController,
                          hintText: "Other",
                          margin: getMargin(top: 10, bottom: 5),
                          variant: TextFormFieldVariant.cardBg,
                          padding: TextFormFieldPadding.paddingT24,
                          fontStyle:
                              TextFormFieldFontStyle.poppinsMedium14WhiteA700,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 25, top: 25, right: 10, bottom: 25),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgMenu)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(71)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 27, right: 25, bottom: 25),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSettings)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(71)))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(50),
                text: "Continue payment",
                margin: getMargin(left: 16, right: 16, bottom: 17),
                onTap: () {
                  onTapContinuepaymentOne(context);
                })));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapContinuepaymentOne(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => const AlertDialog(
              content: PaymentSuccesfulPopupDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }
}
