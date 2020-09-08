import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidoresources/constants.dart';
import 'package:kidoresources/details_activies/Big_brothers_big_sisters.dart';
import 'package:kidoresources/details_activies/Explorium_Museum.dart';
import 'package:kidoresources/details_activies/GirlScoutNT.dart';
import 'package:kidoresources/screens/CalenderScreen.dart';
import 'package:kidoresources/widgets/Navigation_bar.dart';
import 'package:kidoresources/widgets/search_bar.dart';

class ActiviesDetail extends StatelessWidget {
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
              press: () {
                Navigator.pop(context);
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
          //Background Image
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
                      Navigator.pop(context);
                    }),
              ],
            ),
          ),
          //Widgets
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
                    // Special Made Widgets
                    // Big Brothers Big Sisters
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BigBroBigSis()));
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/Meditation_women_small.svg",
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Big Brother Big Sisters",
                                      // ignore: deprecated_member_use
                                      style:
                                          // ignore: deprecated_member_use
                                          Theme.of(context).textTheme.subtitle,
                                    ),
                                    Text(
                                        "We partner with parents/guardians, volunteers, and donors"
                                        " to provide children with strong  enduring, professionally supported one-to-one relationships.")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //Explorium Children's Museum
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ExploriumMuseum()));
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/Meditation_women_small.svg",
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Explorium Children's Museum",
                                      // ignore: deprecated_member_use
                                      style:
                                          // ignore: deprecated_member_use
                                          Theme.of(context).textTheme.subtitle,
                                    ),
                                    Text(
                                        "We believe that children should be able to explore their curiosities in a safe environment. "
                                        "We want to provide opportunities for children to experience the wonder and excitement of diffrent career fields.")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //Girl Scout of Northeast Texas
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      height: 175,
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        GirlScoutNortheastTexas()));
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/Meditation_women_small.svg",
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Girl Scout of Northeast Texas ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                        "Girl Scouts of Northeast Texas inspires girls everywhere to stand up and make a "
                                        "difference. By nurturing innovation and developing leadership skills, we prepare "
                                        "girls to overcome challenges and advocate for their ideas now and later.")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //End Marker
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
