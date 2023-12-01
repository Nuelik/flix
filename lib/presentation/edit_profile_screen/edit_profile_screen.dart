import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:flix/widgets/app_bar/appbar_title.dart';
import 'package:flix/widgets/custom_button.dart';
import 'package:flix/widgets/custom_drop_down.dart';
import 'package:flix/widgets/custom_icon_button.dart';
import 'package:flix/widgets/custom_text_form_field.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController group7940Controller = TextEditingController();

  TextEditingController group7942Controller = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController group7946Controller = TextEditingController();

  TextEditingController dateController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            resizeToAvoidBottomInset: false,
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
                    onTapArrowleft1(context);
                  }),
              centerTitle: true,
              title: const AppbarTitle(text: "Edit Profile"),
            ),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getSize(84),
                          width: getSize(84),
                          margin: getMargin(top: 23),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse41484x84,
                                    height: getSize(84),
                                    width: getSize(84),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(42)),
                                    alignment: Alignment.center),
                                CustomIconButton(
                                    height: 30,
                                    width: 30,
                                    variant: IconButtonVariant.fillWhiteA70087,
                                    padding: IconButtonPadding.paddingAll4,
                                    alignment: Alignment.bottomRight,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCamera))
                              ])),
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 28),
                              padding: getPadding(
                                  left: 22, top: 19, right: 22, bottom: 19),
                              decoration: AppDecoration.fillGray90090.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL18),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Full Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular10Bluegray400
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.12))),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: group7940Controller,
                                        hintText: "Antonio Renders",
                                        margin: getMargin(top: 9),
                                        variant: TextFormFieldVariant
                                            .underLineWhiteA7006c,
                                        fontStyle: TextFormFieldFontStyle
                                            .poppinsMedium14WhiteA700),
                                    Padding(
                                        padding: getPadding(top: 19),
                                        child: Text("Username",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular10Bluegray400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.12)))),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: group7942Controller,
                                        hintText: "@renders.antonio",
                                        margin: getMargin(top: 10),
                                        variant: TextFormFieldVariant
                                            .underLineWhiteA7006c,
                                        fontStyle: TextFormFieldFontStyle
                                            .poppinsMedium14WhiteA700),
                                    Padding(
                                        padding: getPadding(top: 19),
                                        child: Text("Email Address",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular10Bluegray400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.12)))),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: emailController,
                                        hintText: "xyz@gmail.com",
                                        margin: getMargin(top: 11),
                                        variant: TextFormFieldVariant
                                            .underLineWhiteA7006c,
                                        fontStyle: TextFormFieldFontStyle
                                            .poppinsMedium14WhiteA700,
                                        textInputType:
                                            TextInputType.emailAddress),
                                    Padding(
                                        padding: getPadding(top: 19),
                                        child: Text("Phone Number",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular10Bluegray400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.12)))),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: group7946Controller,
                                        hintText: "+123 4567 8901",
                                        margin: getMargin(top: 9),
                                        variant: TextFormFieldVariant
                                            .underLineWhiteA7006c,
                                        fontStyle: TextFormFieldFontStyle
                                            .poppinsMedium14WhiteA700),
                                    Padding(
                                        padding: getPadding(top: 19),
                                        child: Text("Date of Birth",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular10Bluegray400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.12)))),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: dateController,
                                        hintText: "30 February 2022",
                                        margin: getMargin(top: 11),
                                        variant: TextFormFieldVariant
                                            .underLineWhiteA7006c,
                                        fontStyle: TextFormFieldFontStyle
                                            .poppinsMedium14WhiteA700,
                                        textInputAction: TextInputAction.done,
                                        suffix: Container(
                                            margin: getMargin(
                                                left: 30, top: 1, bottom: 10),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCalendar18x18)),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(30))),
                                    Padding(
                                        padding: getPadding(top: 19),
                                        child: Text("Gender",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular10Bluegray400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.12)))),
                                    CustomDropDown(
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 4),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    width:
                                                        getHorizontalSize(1))),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgRectangle12136)),
                                        hintText: "Male",
                                        margin: getMargin(top: 9),
                                        items: dropdownItemList,
                                        onChanged: (value) {}),
                                    CustomButton(
                                        height: getVerticalSize(50),
                                        text: "Save",
                                        margin: getMargin(top: 35, bottom: 20))
                                  ])))
                    ]))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
