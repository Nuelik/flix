import 'package:flix/presentation/accounts/reset_password_screen/reset_password_screen.dart';
import 'package:flix/theme/app_style.dart';
import 'package:flix/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flix/widgets/custom_text_form_field.dart';
import 'package:form_validator/form_validator.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailaddressController = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

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
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Form(
                  key: _form,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                           const Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),),
                        
                        Container(
                            width: 327,
                            margin: const EdgeInsets.only(top: 7, right: 15, bottom: 30),
                            child: Text(
                                "You forgot your password? don't worry, please enter your recovery email address",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular14
                                    .copyWith(letterSpacing: 0.14))),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailaddressController,
                          hintText: "Email Address",
                          validator: ValidationBuilder().email().build(),
                          keyboardType: TextInputType.emailAddress,
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
                                          const ResetPasswordScreen())));
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
                              "Submit",
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
