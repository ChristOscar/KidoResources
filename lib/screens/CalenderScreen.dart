import 'package:flutter/material.dart';
import 'package:kidoresources/widgets/Calender_widget.dart';
import 'package:kidoresources/widgets/Category_Card.dart';
import 'package:kidoresources/widgets/Navigation_bar.dart';
import 'package:kidoresources/widgets/search_bar.dart';

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
              isActive: true,
            ),
            BottomNavigation(
              title: "Home",
              svgSrc: "assets/icons/Icon_home.svg",
              press: () {},
              isActive: false,
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
                  //Title
                  //Soon to be changed to be dynamic with the days
                  Center(
                    child: Text(
                      "New This Week",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  //Search Bar resizing and placement
                  Center(
                    child: SizedBox(
                      height: 110,
                      width: 230,
                      child: SearchBar(),
                    ),
                  ),
                  //Calender Settings
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: .5,
                      crossAxisSpacing: 50,
                      mainAxisSpacing: 30,
                      children: <Widget>[
                        CalenderWidget(),
                      ],
                    ),
                  ),
                
                  //Info Card to be placed here with new additions and update
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 2.3,
                      crossAxisSpacing: 50,
                      mainAxisSpacing: 10,
                      children: <Widget>[
                        CatagoryCard(
                          title: "New Additions",
                          text: "Welcome DCCDS to Kido Resources",
                          svgSrc: "assets/icons/Hamburger.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
