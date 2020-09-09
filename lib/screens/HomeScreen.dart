import 'package:flutter/material.dart';
import 'package:kidoresources/screens/ActiviesDetail.dart';
import 'package:kidoresources/screens/CalenderScreen.dart';
import 'package:kidoresources/screens/FoodDetail.dart';
import 'package:kidoresources/screens/SchoolsDetail.dart';
import 'package:kidoresources/widgets/Category_Card.dart';
import 'package:kidoresources/widgets/Navigation_bar.dart';
import 'package:kidoresources/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      //NavBar
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        height: 70,
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNavigation(
              title: "Home",
              svgSrc: "assets/icons/Icon_home.svg",
              press: () {},
              isActive: true,
            ),
            BottomNavigation(
              title: "Today",
              svgSrc: "assets/icons/Icon_calendar.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return CalenderScreen();
                  }),
                );
              },
              isActive: false,
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          //Background Picture
          Container(
            height: size.height * .45,
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
                  Text(
                    "\nWelcome to \nKIDO Resources",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 35,
                    ),
                  ),
                  //Search Bar
                  SearchBar(),
                  //Tiles for Navigation
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: <Widget>[
                        //Labor and Delivery
                        CatagoryCard(
                          title: "Labor and Delivery",
                          text: " ",
                          svgSrc: "assets/icons/Labor_Delivery-01.svg",
                          press: () {},
                        ),
                        //Food Resources
                        CatagoryCard(
                          title: "Food Resources",
                          text: '',
                          svgSrc: "assets/icons/Hamburger.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return FoodDetail();
                              }),
                            );
                          },
                        ),
                        //Actvities
                        CatagoryCard(
                          title: "Actvities",
                          text: '',
                          svgSrc: "assets/icons/yoga.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return ActiviesDetail();
                              }),
                            );
                          },
                        ),
                        //Education
                        CatagoryCard(
                          title: "Education",
                          text: '',
                          svgSrc: "assets/icons/Booklover4.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return SchoolsDetail();
                              }),
                            );
                          },
                        ),
                        //Healthcare
                        CatagoryCard(
                          title: "Healthcare",
                          text: " ",
                          svgSrc: "assets/icons/Healthcare_people.svg",
                          press: () {},
                        ),
                        //Physical Thearpy
                        CatagoryCard(
                          title: "Physical Thearpy",
                          text: " ",
                          svgSrc: "assets/icons/Physical_Therpy-01.svg",
                          press: () {},
                        ),

                        //Adding more Cards
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
