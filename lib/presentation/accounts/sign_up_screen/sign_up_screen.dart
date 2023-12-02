import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/core/utils/image_constant.dart';
import 'package:flix/presentation/accounts/login_screen/login_screen.dart';
import 'package:flix/presentation/accounts/otp_verification_screen/otp_verification_screen.dart';
import 'package:flix/theme/app_decoration.dart';
import 'package:flix/theme/app_style.dart';
import 'package:flix/widgets/custom_image_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flix/widgets/custom_text_form_field.dart';
import 'package:form_validator/form_validator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailaddressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordOneController = TextEditingController();
  bool isObscureText = true;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  bool isObscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(
                    left: 18, top: 47, right: 18, bottom: 47),
                child: SingleChildScrollView(
                  child: Form(
                  key: _form,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),),

                        const SizedBox(
                          height: 40,
                        ),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          validator: ValidationBuilder()
                              .minLength(8)
                              .maxLength(20)
                              .build(),
                          controller: fullNameController,
                          hintText: "Full Name",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailaddressController,
                          hintText: "Email Address",
                          validator: ValidationBuilder().email().build(),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: passwordController,
                          hintText: "Password",
                          validator: ValidationBuilder()
                              .minLength(8)
                              .maxLength(20)
                              .build(),
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.visiblePassword,
                          suffixIcon: Align(
                            heightFactor: 1.0,
                            widthFactor: 1.0,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isObscureText = !isObscureText;
                                });
                              },
                              icon: Icon(
                                !isObscureText
                                    ? CupertinoIcons.eye_slash
                                    : CupertinoIcons.eye,
                                color: ColorConstant.blueGray100,
                              ),
                            ),
                          ),
                          obscureText: isObscureText,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: passwordOneController,
                          hintText: "Confirm Password",
                          validator: ValidationBuilder()
                              .minLength(8)
                              .maxLength(20)
                              .build(),
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.visiblePassword,
                          suffixIcon: Align(
                            heightFactor: 1.0,
                            widthFactor: 1.0,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isObscureText2 = !isObscureText2;
                                });
                              },
                              icon: Icon(
                                !isObscureText2
                                    ? CupertinoIcons.eye_slash
                                    : CupertinoIcons.eye,
                                color: ColorConstant.blueGray100,
                              ),
                            ),
                          ),
                          obscureText: isObscureText2,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () {
                            if (_form.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const OtpVerificationScreen())));
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: double.maxFinite,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Theme.of(context).primaryColor,
                            ),
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
                                  height: 2,
                                  color: ColorConstant.whiteA7006c),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: Text("OR",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: ColorConstant.whiteA7006c))),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
                                  height: 2,
                                  color: ColorConstant.whiteA7006c),
                            ]),
                        Padding(
                            padding: const EdgeInsets.only(top: 31),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                        width: MediaQuery.of(context).size.width *
                                        0.42,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12),
                                        decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: ColorConstant.inActiveBtnColor,
                                      ),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                ImageConstant.imgGoogle2,
                                                height: 23,
                                                  ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          top: 4,
                                                          bottom: 3),
                                                  child: Text("Google",
                                                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white)))
                                            ])),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                        width: MediaQuery.of(context).size.width *
                                        0.42,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12),
                                        decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: ColorConstant.inActiveBtnColor,
                                      ),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                            Image.asset(
                                                ImageConstant.imgFacebook11,
                                                height: 25,
                                                  ),
                                      
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          top: 4,
                                                          bottom: 5),
                                                  child: Text("Facebook",
                                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white)))
                                            ])),
                                  )
                                ])),
                        Padding(
                            padding: const EdgeInsets.only(
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
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: ((context) =>
                                                const LoginScreen()),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4),
                                          child: Text("Login now",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsMedium12
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline))))
                                ]))
                      ]),
                ),
                  ),
)));
  }
}
