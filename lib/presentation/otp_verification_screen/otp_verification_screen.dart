import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

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
                      Text("OTP Verification",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium24),
                      Padding(
                          padding: getPadding(top: 12),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "6 digit code has been sent to",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray100,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing:
                                            getHorizontalSize(0.14))),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray100,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing:
                                            getHorizontalSize(0.14))),
                                TextSpan(
                                    text: "xyz@gmail.com ",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: getHorizontalSize(0.14)))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(left: 20, top: 72, right: 19),
                          child: PinCodeTextField(
                              appContext: context,
                              length: 6,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {},
                              textStyle: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(20),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: getHorizontalSize(0.2)),
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(44),
                                  fieldWidth: getHorizontalSize(44),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(10)),
                                  selectedFillColor: ColorConstant.whiteA70063,
                                  activeFillColor: ColorConstant.whiteA70063,
                                  inactiveFillColor: ColorConstant.whiteA70063,
                                  inactiveColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  selectedColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  activeColor:
                                      ColorConstant.fromHex("#1212121D")))),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "Verify",
                          margin: getMargin(top: 36),
                          fontStyle: ButtonFontStyle.poppinsMedium16WhiteA700,
                          onTap: () {
                            onTapVerify(context);
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 47, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Didn’t receive the OTP ?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular14Bluegray100a2),
                                    Padding(
                                        padding: getPadding(left: 4),
                                        child: Text("Resend",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium14
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .underline)))
                                  ])))
                    ]))));
  }

  onTapVerify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetPasswordScreen);
  }
}
