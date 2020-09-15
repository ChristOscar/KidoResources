import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidoresources/constants.dart';
import 'package:kidoresources/details_food/DCFC.dart';
import 'package:kidoresources/details_food/DentonCommunity_FoodCenter.dart';
import 'package:kidoresources/details_food/FRM.dart';
import 'package:kidoresources/details_food/FirstRefugeMinistries.dart';
import 'package:kidoresources/details_food/SD.dart';
import 'package:kidoresources/details_food/Serve_Denton.dart';
import 'package:kidoresources/screens/CalenderScreen.dart';
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
                                    builder: (context) => ServeDenton()));
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
                                      "Serve Denton",
                                      // ignore: deprecated_member_use
                                      style:
                                          // ignore: deprecated_member_use
                                          Theme.of(context).textTheme.subtitle,
                                    ),
                                    Text(
                                        "The Denton Hunger Coalition and Tarrant Area Food Bank partner together to bring the "
                                        "Denton Mobile Pantry to the First Baptist Denton parking lot every second Saturday of the month.")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //Denton Community Food Center
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
                                    builder: (context) => DCommunityFood2()));
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
                                      "Denton Community Food Center",
                                      // ignore: deprecated_member_use
                                      style:
                                          // ignore: deprecated_member_use
                                          Theme.of(context).textTheme.subtitle,
                                    ),
                                    Text(
                                        "Founded in 1974, the Food Center has had as its mission to provide food"
                                        "from a central community storehouse to needy families and individuals "
                                        "stuggling with hunger insecurity")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //First Refuge Ministries
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
                                    builder: (context) =>
                                        FirstRefugeMinistries()));
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
                                      "First Refuge Ministries",
                                      // ignore: deprecated_member_use
                                      style:
                                          // ignore: deprecated_member_use
                                          Theme.of(context).textTheme.subtitle,
                                    ),
                                    Text(
                                        "First Refuge Food Pantry is a Choice Pantry this method provides the client "
                                        "an opportunity to choose foods based upon their dietary needs.")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
