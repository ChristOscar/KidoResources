import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidoresources/constants.dart';

class BottomNavigation extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  final bool isActive;

  const BottomNavigation({
    Key key,
    this.svgSrc,
    this.title,
    this.press,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgSrc,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          )
        ],
      ),
    );
  }
}
