import 'package:flutter/material.dart';
import 'package:kidoresources/widgets/Category_Card.dart';
import 'package:kidoresources/widgets/Navigation_bar.dart';
import 'package:kidoresources/widgets/search_bar.dart';
import 'package:kidoresources/constants.dart';


class CalenderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        height: 70,
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNavigation(
              title: "Today",
              svgSrc: "assets/icons/Icon_calendar.svg",
              press: () {},
              isActive: false,
            ),
            BottomNavigation(
              title: "Home",
              svgSrc: "assets/icons/Icon_home.svg",
              press: () {},
              isActive: true,
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/undraw_pilates_gpdb.png")),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Good Morning \nPhantayisa",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 35,
                    ),
                  ),
                  SearchBar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}