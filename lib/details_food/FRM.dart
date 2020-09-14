import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kidoresources/constants.dart';
import 'package:kidoresources/widgets/Information_Card.dart';

class FirstRefugeMinistries2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 175,
            decoration: BoxDecoration(
              color: Colors.red[200],
              image: DecorationImage(
                  image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
                  fit: BoxFit.fitWidth),
            ),
          ),
          //Filling Void
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "First Refuge Ministries",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 23),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 45,
                    ),
                    //Our Mission
                    InfoCard(
                      cardheight: 250.0,
                      title: "Our Mission",
                      svgImage: "assets/icons/Healthcare_people.svg",
                      text:
                          "Serve Denton partners with nonprofits to help make thier service more accessible for people in need.",
                    ),
                    SizedBox(height: 15),
                    //Our Mission
                    InfoCard(
                      cardheight: 250.0,
                      title: "Our Mission",
                      svgImage: "assets/icons/Healthcare_people.svg",
                      text:
                          "Serve Denton partners with nonprofits to help make thier service more accessible for people in need.",
                    ),
                    SizedBox(height: 15),
                    //Our Mission
                    InfoCard(
                      cardheight: 250.0,
                      title: "Our Mission",
                      svgImage: "assets/icons/Healthcare_people.svg",
                      text:
                          "Serve Denton partners with nonprofits to help make thier service more accessible for people in need.",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
