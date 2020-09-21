import 'package:flutter/material.dart';
import 'package:kidoresources/constants.dart';
import 'package:kidoresources/details_healthcare/DCommunityHealth.dart';
import 'package:kidoresources/details_healthcare/DCountyPublic.dart';
import 'package:kidoresources/details_healthcare/DKiwanisClub.dart';
import 'package:kidoresources/details_healthcare/SingingOaks.dart';
import 'package:kidoresources/details_healthcare/TWUDental.dart';
import 'package:kidoresources/details_healthcare/TexasHealthHuman.dart';
import 'package:kidoresources/screens/CalenderScreen.dart';
import 'package:kidoresources/widgets/Bio_Card.dart';
import 'package:kidoresources/widgets/Navigation_bar.dart';
import 'package:kidoresources/widgets/search_bar.dart';

class HealthcareDetail extends StatelessWidget {
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
              color: Colors.yellow[200],
              image: DecorationImage(
                image: AssetImage("assets/images/HC-01.png"),
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
                        "Healthcare",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
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
                      "Healthcare",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    SizedBox(height: 10),
                    SizedBox(
                      width:
                          size.width * .62, // it just take 60% of total width
                      child: Text(
                        "Don’t wait until your sick and hit rock bottom until you start caring about your health.",
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: SearchBar(),
                    ),
                    SizedBox(height: 10),
                    // Special Made Widgets
                    //Denton Community Health Clinic
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Healthcare_people.svg",
                      title: "Denton Community Health Clinic",
                      text:
                          "Denton City County Day School mission is to support a diverse, multicultural community."
                          " Special emphasis and attention are placed on serving children from low to middle income families. ",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DCommunityHealthClinic()));
                      },
                    ),
                    //Denton County Public Health
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Healthcare_people.svg",
                      title: "Denton County Public Health",
                      text:
                          "Denton County Public health Clinical services provides preventive public health services to the residents of Denton County.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DCountyPublicHealth()));
                      },
                    ),
                    //Denton Kiwanis Childrens Clinic
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Healthcare_people.svg",
                      title: "Denton Kiwanis Childrens Clinic",
                      text:
                          "Denton Kiwanis Club CHildrens Clinic is a referral service to a number of local health care providers.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DKiwanisChildrensClinic()));
                      },
                    ),
                    //Singing Oaks Church of Christ
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Healthcare_people.svg",
                      title: "Singing Oaks Church of Christ",
                      text:
                          "SInging Oaks Church of Christ provides prescription drug assistance for routine medical treatment.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SingingOaksChurchofChrist()));
                      },
                    ),
                    //Texas Health and Human Services Commission
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Healthcare_people.svg",
                      title: "Texas Health and Human Services Commission",
                      text:
                          "Texas Health and Human Services Commision provides support services for low income "
                          "families including food stamps, TANF, Medicaid (child and pregnant women Medicaid).",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TexasHealthHuman()));
                      },
                    ),
                    //TWU Dental Hygiene Clinic
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Healthcare_people.svg",
                      title: "TWU Dental Hygiene Clinic",
                      text:
                          "TWU Dental Hygine Clinic offers teeth cleaning, fluoride treatment, sealant, "
                          "plaque control and full mouth X-rays to students and residents of Denton and the surrounding areas.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TWUDentalHygiene()));
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
