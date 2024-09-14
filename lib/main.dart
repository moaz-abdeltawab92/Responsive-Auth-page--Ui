import 'package:auth_app/Screens/welcome/welcome.dart';
import 'package:auth_app/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Auth_App());
}

class Auth_App extends StatelessWidget {
  const Auth_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Auth",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      home: WelcomeScreen(),
    );
  }
}
