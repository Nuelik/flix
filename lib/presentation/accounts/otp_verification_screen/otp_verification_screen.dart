import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../navigation_screen/navigation_screen.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  String verifyCode = "";
  String verifyCodeEmpty = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Form(
                  key: _form,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      const Text(
                  "OTP Verification",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),),
                        
                        Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "6 digit code has been sent to",
                                      style: TextStyle(
                                          color: ColorConstant.blueGray100,
                                          fontSize: (14),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: (0.14))),
                                  TextSpan(
                                      text: " ",
                                      style: TextStyle(
                                          color: ColorConstant.blueGray100,
                                          fontSize: (14),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: (0.14))),
                                  TextSpan(
                                      text: "xyz@gmail.com ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: (14),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: (0.14)))
                                ]),
                                textAlign: TextAlign.left)),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 72, right: 19, bottom: 5),
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
                                onChanged: (value) {
                                  setState((){
                                    verifyCode = value;
                                    });
                                  },
                                textStyle: TextStyle(
                                    color: ColorConstant.blueGray100,
                                    fontSize: (20),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: (0.2)),
                                pinTheme: PinTheme(
                                    fieldHeight: (44),
                                    fieldWidth: (44),
                                    shape: PinCodeFieldShape.box,
                                    borderRadius: BorderRadius.circular((10)),
                                    selectedFillColor:
                                        ColorConstant.inActiveBtnColor,
                                    activeFillColor: ColorConstant.inActiveBtnColor,
                                    inactiveFillColor:
                                        ColorConstant.inActiveBtnColor,
                                    inactiveColor: const Color(0x1212121D),
                                    selectedColor: ColorConstant.blueGray100,
                                    activeColor: ColorConstant.blueGray100))),
                        Text(verifyCodeEmpty, 
                          style: TextStyle(color: Theme.of(context).primaryColor, 
                            fontSize: 10, fontWeight: FontWeight.w400,)),
                        const SizedBox(height: 30,),
                        InkWell(
                          onTap: () {
                            if (verifyCode.isNotEmpty) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const NavigationPage())));
                            } else{
                              setState((){
                                verifyCodeEmpty = "Field cannot be empty";
                                });
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: double.maxFinite,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: verifyCode.isNotEmpty ? Theme.of(context).primaryColor : Theme.of(context).primaryColor.withOpacity(0.5),
                            ),
                            child: const Text(
                              "Verify",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 47, bottom: 5),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Didn’t receive the OTP ?",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular14Bluegray100a2),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4),
                                          child: Text("Resend",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsMedium14
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline)))
                                    ])))
                      ]),
                ))));
  }
}
