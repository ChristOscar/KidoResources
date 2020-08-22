import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidoresources/constants.dart';
import 'package:kidoresources/details/Big_brothers_big_sisters.dart';
import 'package:kidoresources/screens/CalenderScreen.dart';
import 'package:kidoresources/screens/HomeScreen.dart';
import 'package:kidoresources/widgets/Category_Card.dart';
import 'package:kidoresources/widgets/Navigation_bar.dart';
import 'package:kidoresources/widgets/search_bar.dart';

class ActiviesDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }),
                );
              },
              isActive: false,
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
          Container(
            height: size.height * .65,
            decoration: BoxDecoration(
              color: Colors.lightBlue[200],
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          //Backbutton
          SafeArea(
            child: Column(
              children: <Widget>[
                //Back Button
                IconButton(
                    icon: Icon(Icons.chevron_left),
                    alignment: Alignment(-1, -1),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }),
                      );
                    }),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //Title
                    //Soon to be changed to be dynamic with the days
                    Center(
                      child: Text(
                        "Activities",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Activities",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    SizedBox(height: 10),
                    SizedBox(
                      width:
                          size.width * .62, // it just take 60% of total width
                      child: Text(
                        "Live happoer and healthier by having fun and keeping active.\n"
                        "Fun Fact: Working out and having fun sharpens memory and brain activity!",
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: SearchBar(),
                    ),
                    SizedBox(height: 10),
                    // DCCDS1
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(10),
                      height: 165,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/Meditation_women_small.svg",
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Big Brothers Big Sisters",
                                  // ignore: deprecated_member_use
                                  style: Theme.of(context).textTheme.subtitle,
                                ),
                                Text(
                                    "We partner with parents/guardians, volunteers, and donors"
                                    " to provide children with strong  enduring, professionally supported one-to-one relationships.")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: IconButton(
                              icon: Icon(Icons.chevron_right),
                              onPressed: () {
                                MaterialPageRoute(builder: (context) {
                                  return BigBroBigSis();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Another Container
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      height: 165,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/Meditation_women_small.svg",
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "DCCDS",
                                  // ignore: deprecated_member_use
                                  style: Theme.of(context).textTheme.subtitle,
                                ),
                                Text(
                                    "Everyday a child walks thorugh the door and experiances change."
                                    " Let us be the first thing they see. Growing together to make amaerica great again.")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: IconButton(
                              icon: Icon(Icons.chevron_right),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Another type of widget
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      height: 165,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 17,
                            spreadRadius: -23,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            MaterialPageRoute(
                              builder: (context) {
                                return BigBroBigSis();
                              },
                            );
                            //Ended here following Category_card.dart when setting it up.
                            //Not finished
                            //Page route not working
                          },
                        ),
                      ),
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
