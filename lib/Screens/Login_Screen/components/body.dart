import 'package:auth_app/Screens/Login_Screen/components/background.dart';
import 'package:auth_app/Screens/SignUp_Screen/signup.dart';
import 'package:auth_app/components/Rounded_Input.dart';
import 'package:auth_app/components/Rounded_Password.dart';
import 'package:auth_app/components/Roundedbutton.dart';
import 'package:auth_app/components/alreadyhaveanaccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset("assets/icons/login.svg",
                height: size.height * 0.34),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AllreadyHaveAnAccountChek(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Signup();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
