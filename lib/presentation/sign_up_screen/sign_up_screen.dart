import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/custom_button.dart';
import 'package:flix/widgets/custom_text_form_field.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 47, right: 16, bottom: 47),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Sign up",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium24),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailaddressController,
                          hintText: "Full Name",
                          margin: getMargin(top: 45)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: passwordController,
                          hintText: "Email Address",
                          margin: getMargin(top: 32),
                          textInputType: TextInputType.emailAddress),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: passwordOneController,
                          hintText: "Password",
                          margin: getMargin(top: 31),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                              margin:
                                  getMargin(left: 30, right: 19, bottom: 18),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgEye)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(42)),
                          isObscureText: true),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "Sign Up",
                          margin: getMargin(top: 35),
                          fontStyle: ButtonFontStyle.poppinsMedium16WhiteA700),
                      Padding(
                          padding: getPadding(left: 19, top: 36, right: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 8, bottom: 9),
                                    child: SizedBox(
                                        width: getHorizontalSize(132),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.whiteA7006c))),
                                Padding(
                                    padding: getPadding(left: 14),
                                    child: Text("or",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12)),
                                Padding(
                                    padding: getPadding(top: 8, bottom: 9),
                                    child: SizedBox(
                                        width: getHorizontalSize(146),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.whiteA7006c,
                                            indent: getHorizontalSize(14))))
                              ])),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    padding: getPadding(
                                        left: 43,
                                        top: 12,
                                        right: 43,
                                        bottom: 12),
                                    decoration: AppDecoration.fillWhiteA70063
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder25),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGoogle2,
                                              height: getSize(25),
                                              width: getSize(25),
                                              margin: getMargin(bottom: 1)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 10, top: 4, bottom: 3),
                                              child: Text("Google",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12WhiteA700))
                                        ])),
                                Container(
                                    padding: getPadding(
                                        left: 35,
                                        top: 11,
                                        right: 35,
                                        bottom: 11),
                                    decoration: AppDecoration.fillWhiteA70063
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder25),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgFacebook11,
                                              height: getSize(27),
                                              width: getSize(27),
                                              margin: getMargin(bottom: 1)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 10, top: 4, bottom: 5),
                                              child: Text("Facebook",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12WhiteA700))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(
                              left: 38, top: 49, right: 37, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Do you already have an account?",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPoppinsRegular12WhiteA700a2),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtLoginnow(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 4),
                                        child: Text("Login now",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium12
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .underline))))
                              ]))
                    ]))));
  }

  onTapTxtLoginnow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}