import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidoresources/constants.dart';
import 'package:kidoresources/details_activies/BBBS.dart';
import 'package:kidoresources/details_activies/Big_brothers_big_sisters.dart';
import 'package:kidoresources/details_activies/Camp_Fire.dart';
import 'package:kidoresources/details_activies/Camp_Summit.dart';
import 'package:kidoresources/details_activies/EM.dart';
import 'package:kidoresources/details_activies/ExcelCenter_Lewisville.dart';
import 'package:kidoresources/details_activies/Explorium_Museum.dart';
import 'package:kidoresources/details_activies/GSNT.dart';
import 'package:kidoresources/details_activies/GirlScoutNT.dart';
import 'package:kidoresources/details_activies/Journey_Dream.dart';
import 'package:kidoresources/screens/BoyGirl_ClubNorthCentral.dart';
import 'package:kidoresources/screens/CalenderScreen.dart';
import 'package:kidoresources/details_activies/CrossTimbers_YMCA.dart';
import 'package:kidoresources/widgets/Bio_Card.dart';
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
                    //Big Brother Big Sisters
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Big Brother Big Sisters",
                      text:
                          "We partner with parents/guardians, volunteers, and donors"
                          " to provide children with strong  enduring, professionally supported one-to-one relationships.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BigBroBigSis2()));
                      },
                    ),
                    //Explorium Children's Museum
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Explorium Children's Museum",
                      text:
                          "We believe that children should be able to explore their curiosities in a safe environment. "
                          "We want to provide opportunities for children to experience the wonder and excitement of diffrent career fields.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExploriumMuseum2()));
                      },
                    ),
                    //Girl Scout of Northeast Texas
                    Biocard(
                      cardheight: 180.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Girl Scout of Northeast Texas",
                      text:
                          "Girl Scouts of Northeast Texas inspires girls everywhere to stand up and make a difference. By nurturing innovation and "
                          "developing leadership skills, we prepare girls to overcome challenges and advocate for their ideas now and later.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    GirlScoutNortheastTexas2()));
                      },
                    ),
                    //Camp Fire First Texas
                    Biocard(
                      cardheight: 180.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Camp Fire First Texas",
                      text:
                          "Camp Fire First Texas offers youth development programs for boys and girls ages 6 months - 18 years old.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CampFireFirstTexas()));
                      },
                    ),
                    //Camp Summit
                    Biocard(
                      cardheight: 180.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Camp Summit",
                      text:
                          "Camp Summit is a year round residential camping program for children and adults with disabilities.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CampSummit()));
                      },
                    ),
                    //Cross Timbers YMCA
                    Biocard(
                      cardheight: 180.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Cross Timbers YMCA",
                      text:
                          "Cross Timbers YMCA provides various programs for youth and adults in their community.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CrossTimbersYMCA()));
                      },
                    ),
                    //Excel Center of Lewisville
                    Biocard(
                      cardheight: 180.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Excel Center of Lewisville",
                      text:
                          "Excel Center or Lewisville is a specialized day treatement program providing various mental health programs.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExcelCenterLewisville()));
                      },
                    ),
                    //Journey to Dream
                    Biocard(
                      cardheight: 180.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Journey to Dream",
                      text:
                          "Journey to Dream is a homeless shelter for teens. Which also has school programs and advocacy programs.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JourneyDream()));
                      },
                    ),
                    //Boys and Girls Club of North Central Texas
                    Biocard(
                      cardheight: 180.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Boys and Girls Club of North Central Texas",
                      text:
                          "The mission of the Boys & Girls Clubs of North Central Texas is to enable all young people, "
                          "especially those who need us most, to reach their full potential as productive, caring and "
                          "responsible citizens",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BoyGirlClubNorthCentral()));
                      },
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
