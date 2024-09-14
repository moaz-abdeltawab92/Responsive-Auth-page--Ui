import 'package:auth_app/Screens/Login_Screen/login.dart';
import 'package:auth_app/Screens/SignUp_Screen/components/Or_divider.dart';
import 'package:auth_app/Screens/SignUp_Screen/components/background.dart';
import 'package:auth_app/Screens/SignUp_Screen/components/social_icons.dart';
import 'package:auth_app/components/Rounded_Input.dart';
import 'package:auth_app/components/Rounded_Password.dart';
import 'package:auth_app/components/Roundedbutton.dart';
import 'package:auth_app/components/alreadyhaveanaccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "SIGNUP",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset("assets/icons/signup.svg",
              height: size.height * 0.34),
          RoundedInputField(hintText: "Your Email", onChanged: (value) {}),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SignUp",
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AllreadyHaveAnAccountChek(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              }),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocalIcon(
                iconsrc: "assets/icons/facebook.svg",
                press: () {},
              ),
              SocalIcon(
                iconsrc: "assets/icons/google-plus.svg",
                press: () {},
              ),
              SocalIcon(
                iconsrc: "assets/icons/twitter.svg",
                press: () {},
              )
            ],
          ),
        ],
      ),
    ));
  }
}
