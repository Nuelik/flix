import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/custom_button.dart';
import 'package:flix/widgets/custom_text_form_field.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Reset Password?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium24),
                      Container(
                          width: getHorizontalSize(331),
                          margin: getMargin(top: 11, right: 11),
                          child: Text(
                              "Please enter your new password to update the password",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular14.copyWith(
                                  letterSpacing: getHorizontalSize(0.14)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: passwordController,
                          hintText: "Password",
                          margin: getMargin(top: 47),
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                              margin:
                                  getMargin(left: 30, right: 19, bottom: 18),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgEye)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(42)),
                          isObscureText: true),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: passwordOneController,
                          hintText: "Confirm new password",
                          margin: getMargin(top: 23),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                              margin:
                                  getMargin(left: 30, right: 19, bottom: 18),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgEye)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(42))),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "Reset Password",
                          margin: getMargin(top: 35, bottom: 5),
                          fontStyle: ButtonFontStyle.poppinsMedium16WhiteA700,
                          onTap: () {
                            onTapResetpasswordOne(context);
                          })
                    ]))));
  }

  onTapResetpasswordOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetPasswordSuccessScreen);
  }
}
