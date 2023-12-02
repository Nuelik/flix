import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/presentation/navigation_screen/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/Api_integration/save_user_tokens/save_user_tokens.dart';
import 'presentation/accounts/login_screen/login_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await Future.delayed(const Duration(seconds: 2));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool loggedIn = false;

  getvalue() async {
    await GetUserToken.gePrefValue().then((value) {
      if (value != null) {
        setState(() {
          loggedIn = value;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getvalue();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flix",
      theme: ThemeData(
        primaryColor: ColorConstant.red700,
        scaffoldBackgroundColor: ColorConstant.black900,
        fontFamily: 'Poppins',
      ),
      home: !loggedIn ? const LoginScreen() : const NavigationPage(),
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child!);
      },
    );
  }
}
