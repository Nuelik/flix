import 'package:flix/presentation/accounts/login_screen/login_screen.dart';
import 'package:flix/theme/app_style.dart';
import 'package:flutter/material.dart';

class ResetPasswordSuccessScreen extends StatefulWidget {
  const ResetPasswordSuccessScreen({super.key});

  @override
  State<ResetPasswordSuccessScreen> createState() => _ResetPasswordSuccessScreenState();
}

class _ResetPasswordSuccessScreenState extends State<ResetPasswordSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Congrats!",
                            style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                              margin: const EdgeInsets.only(top: 7, right: 32),
                            child: Text(
                                "Congrats your password has been updated please continue to login",
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular14
                                    .copyWith(letterSpacing: (0.14)))),
                        const SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const LoginScreen())));
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
                      ])))),
    );
  }
}
