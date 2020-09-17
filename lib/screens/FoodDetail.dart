import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidoresources/constants.dart';
import 'package:kidoresources/details_food/AsburyRelief.dart';
import 'package:kidoresources/details_food/DCFC.dart';
import 'package:kidoresources/details_food/DentonCommunity_FoodCenter.dart';
import 'package:kidoresources/details_food/DentonMobileFood.dart';
import 'package:kidoresources/details_food/DentonSalvationArmy.dart';
import 'package:kidoresources/details_food/Denton_Bible.dart';
import 'package:kidoresources/details_food/FRM.dart';
import 'package:kidoresources/details_food/FirstRefugeMinistries.dart';
import 'package:kidoresources/details_food/OurDailyBread.dart';
import 'package:kidoresources/details_food/SD.dart';
import 'package:kidoresources/details_food/Serve_Denton.dart';
import 'package:kidoresources/details_food/ShepherdsHand.dart';
import 'package:kidoresources/details_food/SingingOaks.dart';
import 'package:kidoresources/details_food/TexasHealth_Human.dart';
import 'package:kidoresources/screens/CalenderScreen.dart';
import 'package:kidoresources/widgets/Bio_Card.dart';
import 'package:kidoresources/widgets/Navigation_bar.dart';
import 'package:kidoresources/widgets/search_bar.dart';

class FoodDetail extends StatelessWidget {
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
          //Food Image Background
          Container(
            height: size.height * .65,
            decoration: BoxDecoration(
              color: Colors.red[200],
              image: DecorationImage(
                image: AssetImage("assets/images/foodumm.png"),
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //Title
                    //Soon to be changed to be dynamic with the days
                    Center(
                      child: Text(
                        "Food Resources",
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
                      "Food",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    SizedBox(height: 10),
                    SizedBox(
                      width:
                          size.width * .62, // it just take 60% of total width
                      child: Text(
                        "Everyone no matter you postion or soical class should be entilited to "
                        "Having food in their bellies and love all around.",
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: SearchBar(),
                    ),
                    SizedBox(height: 10),
                    //Serve Denton
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Serve Denton",
                      text:
                          "The Denton Hunger Coalition and Tarrant Area Food Bank partner together to bring the "
                          "Denton Mobile Pantry to the First Baptist Denton parking lot every second Saturday of the month.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServeDenton()));
                      },
                    ),
                    //Denton Community Food Center
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Denton Community Food Center",
                      text:
                          "Founded in 1974, the Food Center has had as its mission to provide food"
                          "from a central community storehouse to needy families and individuals "
                          "stuggling with hunger insecurity",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DCommunityFood2()));
                      },
                    ),
                    //First Refuge Ministries
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "First Refuge Ministries",
                      text:
                          "First Refuge Food Pantry is a Choice Pantry this method provides the client "
                          "an opportunity to choose foods based upon their dietary needs.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FirstRefugeMinistries()));
                      },
                    ),
                    //Texas Health And Human Service Commission
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Texas Health And Human Service Commission",
                      text:
                          "Texas Health and Human Service Commision Provides support services for "
                          "low-income families including food stamps, TANF, Medicaid.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TexasHealthHuman()));
                      },
                    ),
                    //Denton Bible
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Denton Bible",
                      text:
                          "Vision Ministries of Denton Bible seeks to build bridges to both a "
                          "loving God and a community of support that is committed to meeting "
                          "their physical and spiritual needs.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DentonBible()));
                      },
                    ),
                    //Asbury Relief Ministry Food Pantry
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Asbury Relief Ministry Food Pantry",
                      text:
                          "Asbury Relief Ministry Food Pantry provides food to those in need around the community.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AsburyRelief()));
                      },
                    ),
                    //Denton mobile food pantry
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Denton Mobile Food Pantry",
                      text:
                          "Denton Mobile Food Pantry focuses on providing food once a month to those in need in and around the Denton community.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DentonMobileFood()));
                      },
                    ),
                    //The Shepherds Hand
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "The Shepherds Hand",
                      text:
                          "The Shepherds hand gives out food to take home daily each guest may come everday",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShepherdsHand()));
                      },
                    ),
                    //Singing Oaks Church Of Christ (Food Pantry)
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Singing Oaks Church Of Christ (Food Pantry)",
                      text:
                          " Singing Oaks Church Of Christ (Food Pantry) main goal is to provide nonperishable and some frozen meats and vegetables.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingingOaks()));
                      },
                    ),
                    //The Salvation Army, Denton Corps
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "The Salvation Army, Denton Corps",
                      text:
                          "The Salvation Army will provide groceries bassed on family size and needs.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DentonSalvationArmy()));
                      },
                    ),
                    //Our Daily Bread, Inc
                    Biocard(
                      cardheight: 165.0,
                      svgImage: "assets/icons/Meditation_women_small.svg",
                      title: "Our Daily Bread",
                      text:
                          "Our Daily Bread feeds and cares for the homeless and "
                          "at-risk in our community while maintaining the dignity of our guests and "
                          "offering opportunities for a new start.",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OurDailyBread()));
                      },
                    ),
                    //New
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
