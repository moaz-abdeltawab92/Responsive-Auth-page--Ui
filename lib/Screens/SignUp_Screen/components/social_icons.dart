import 'package:auth_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocalIcon extends StatelessWidget {
  final String iconsrc;
  final GestureTapCallback? press;
  const SocalIcon({
    super.key,
    required this.iconsrc,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryLightColor),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            iconsrc,
            height: 20,
            width: 20,
          )),
    );
  }
}
