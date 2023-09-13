 import 'package:customer_app_design/signin_screen.dart';
 import 'package:customer_app_design/signup_screen.dart';
 import 'package:customer_app_design/welcome_screen.dart';
 import 'package:flutter/material.dart';
 import 'home_screen.dart';
 import 'home_screen2.dart';
import 'otp_verify_success_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Welcomescreen(),
        '/Signinpage': (context) => SigninScreen(),
        '/HomeScreen': (context) => HomeScreen(),
        '/Signuppage': (context) => SignUp(),
       '/otpVerifypage': (context) => OtpVerfySucScreen(),
       '/Homescreen1': (context) => HomeScreen1(),

      },
    );
  }
}
