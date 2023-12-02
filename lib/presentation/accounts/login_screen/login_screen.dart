import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/core/utils/image_constant.dart';
import 'package:flix/presentation/accounts/sign_up_screen/sign_up_screen.dart';
import 'package:flix/theme/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flix/widgets/custom_text_form_field.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_validator/form_validator.dart';

import '../../navigation_screen/navigation_screen.dart';
import '../forgot_password_screen/forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailaddressController = TextEditingController();
  bool isObscureText = true;
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

DateTime timeBackPressed = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final differeance = DateTime.now().difference(timeBackPressed);
        timeBackPressed = DateTime.now();
        if (differeance >= const Duration(milliseconds: 700)) {
          const String msg = 'Press the back button to exit';
          Fluttertoast.showToast(
            msg: msg,
          );
          return false;
        } else {
          Fluttertoast.cancel();
          SystemNavigator.pop();
          return true;
        }
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          systemNavigationBarColor: ColorConstant.black900,
          statusBarColor: ColorConstant.black900,
        ),
        child: SafeArea(
            child: Scaffold(
                resizeToAvoidBottomInset: false,
                body: Padding(
                  padding: const EdgeInsets.only(left: 18, top: 60, right: 18),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _form,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),),
                            
                            const SizedBox(
                              height: 40,
                            ),
                            CustomTextFormField(
                                controller: emailaddressController,
                                hintText: "Email Address",
                                validator: ValidationBuilder().email().maxLength(50).build(),
                                keyboardType: TextInputType.emailAddress),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextFormField(
                              controller: passwordController,
                              validator: ValidationBuilder().minLength(8).maxLength(20).build(),
                              hintText: "Password",
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
                                    )),
                              ),
                              obscureText: isObscureText,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Align(
                                alignment: Alignment.centerRight,
                                child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) =>
                                              const ForgotPasswordScreen()),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Text("Forgot Password?",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                          color: ColorConstant.blueGray100,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                                            )))),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                if (_form.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              const NavigationPage())));
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
                                  "Login",
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
                                              fontSize: 12,
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
                                      Text("Don't have an account?",
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
                                                    const SignUpScreen()),
                                              ),
                                            );
                                          },
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(left: 4),
                                              child: Text("Sign up now",
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
                ))),
      ),
    );
  }
}
