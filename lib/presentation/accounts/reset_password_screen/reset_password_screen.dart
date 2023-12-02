import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/presentation/accounts/reset_password_success_screen/reset_password_success_screen.dart';
import 'package:flix/theme/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flix/widgets/custom_text_form_field.dart';
import 'package:form_validator/form_validator.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController passwordOneController = TextEditingController();
  bool isObscureText = true;
  bool isObscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
           appBar: AppBar(
              leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: ColorConstant.blueGray100,
              size: 16,
            ),
            ),
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
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
                        Text("Reset Password?",
                            style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),),
                        Container(
                            width: (331),
                            margin: const EdgeInsets.only(top: 11, right: 11),
                            child: Text(
                                "Please enter your new password to update the password",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular14
                                    .copyWith(letterSpacing: (0.14)))),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: passwordController,
                            hintText: "Password",
                            validator: ValidationBuilder()
                                .minLength(8)
                                .maxLength(20)
                                .build(),
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
                                      ? CupertinoIcons.eye_slash_fill
                                      : CupertinoIcons.eye_fill,
                                  color: ColorConstant.blueGray100,
                                ),
                              ),
                            ),
                            obscureText: isObscureText),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: passwordOneController,
                            hintText: "Confirm new password",
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
                                      ? CupertinoIcons.eye_slash_fill
                                      : CupertinoIcons.eye_fill,
                                  color: ColorConstant.blueGray100,
                                ),
                              ),
                            ),
                            obscureText: isObscureText2),
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
                                          const ResetPasswordSuccessScreen())));
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
                              "Reset Password",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ]),
                ))));
  }
}
