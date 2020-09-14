import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidoresources/constants.dart';

class InfoCard extends StatelessWidget {
  final String svgImage;
  final num cardheight;
  final String title;
  final String text;

  const InfoCard({
    Key key,
    this.cardheight,
    this.svgImage,
    this.text,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardheight,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(13)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ),
                Center(
                  child: SvgPicture.asset(svgImage),
                ),
                Text(text),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
