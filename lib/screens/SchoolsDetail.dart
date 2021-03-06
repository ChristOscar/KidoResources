import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidoresources/constants.dart';
import 'package:kidoresources/details_schools/CarouselAcademy.dart';
import 'package:kidoresources/details_schools/CastleHill.dart';
import 'package:kidoresources/details_schools/DCS.dart';
import 'package:kidoresources/details_schools/Dccds.dart';
import 'package:kidoresources/details_schools/FredMoore.dart';
import 'package:kidoresources/details_schools/KinderCare.dart';
import 'package:kidoresources/details_schools/WitcherChildcare.dart';
import 'package:kidoresources/screens/CalenderScreen.dart';
import 'package:kidoresources/widgets/Bio_Card.dart';
import 'package:kidoresources/widgets/Navigation_bar.dart';
import 'package:kidoresources/widgets/search_bar.dart';

class SchoolsDetail extends StatelessWidget {
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
          Container(
            //Background Image
            height: size.height * .65,
            decoration: BoxDecoration(
              color: Colors.purple[100],
              image: DecorationImage(
                image: AssetImage("assets/images/ummschool.png"),
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
                        "Schools",
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
                      "Schools",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    SizedBox(height: 10),
                    SizedBox(
                      width:
                          size.width * .62, // it just take 60% of total width
                      child: Text(
                        "The most valuable thing we have is time and attention. If time is the most valuable and"
                        " precious thing we have, it's also the most precious thing we can give. Every day you give that to a student,"
                        " a student that may not get much of anyone's time or attention.",
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: SearchBar(),
                    ),
                    SizedBox(height: 10),
                    // Special Made Widgets
                    //DCCDS
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Booklover4.svg",
                      title: "Denton County City Day School",
                      text:
                          "Denton City County Day School mission is to support a diverse, multicultural community."
                          " Special emphasis and attention are placed on serving children from low to middle income families. ",
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Dccds2()));
                      },
                    ),
                    //Fred Moore Day Nursery School
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Booklover4.svg",
                      title: "Fred Moore Day Nursery School",
                      text:
                          "Fred Moore Day Nursery Schoolprovide low income families in our community "
                          "with comprehensive, affordable and well- balanced care for children.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FredMoore()));
                      },
                    ),
                    //Castle Hills for Kids Only Learning Center
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Booklover4.svg",
                      title: "Castle Hills for Kids Only Learning Center",
                      text:
                          "Castle Hills for Kids Only Learning Center strives to physically meet "
                          "and nurture the individual needs of each child in a safe, supportive and "
                          "academically engaging learning environment",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CastleHill()));
                      },
                    ),
                    //KinderCare Learning Center
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Booklover4.svg",
                      title: "KinderCare Learning Center",
                      text:
                          "KinderCare Learning Center gives children a foundation they can build on. "
                          "Wherever they go after they leave KinderCare, they’ll be ready to think "
                          "bigger, feel stronger, and aim higher.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KinderCare()));
                      },
                    ),
                    //Witcher Childcare
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Booklover4.svg",
                      title: "Witcher Childcare",
                      text:
                          "Offering a comfortable home-based program, Witchers Child Care is "
                          "designed to make every child feel nurtured and engaged.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WitcherChildcare()));
                      },
                    ),
                    //Carousel Academy
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Booklover4.svg",
                      title: "Carousel Academy",
                      text:
                          "At Carousel, we are committed to providing the best possible care for your family.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CarouselAcademy()));
                      },
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
