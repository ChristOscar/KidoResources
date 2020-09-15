import 'package:flutter/material.dart';
import 'package:kidoresources/widgets/Information_Card.dart';

class DCommunityFood2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 350.0,
            decoration: BoxDecoration(
              color: Colors.red[200],
              image: DecorationImage(
                  image: AssetImage("assets/images/foodumm.png"),
                  fit: BoxFit.fitWidth),
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
          //Title
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Denton CFC",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 23),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    //Our Mission
                    InfoCard(
                      cardheight: 150.0,
                      title: "Our Mission",
                      text:
                          "Denton Community Food Center provides food from a central community storehouse to needy families and "
                          "individuals struggling with hunger insecurity.",
                    ),
                    SizedBox(height: 15),
                    //Program Goal
                    InfoCard(
                      cardheight: 185.0,
                      title: "Program Goal",
                      text:
                          "Provides food from a central storehouse to families/individuals struggling with hunger insecurity. Clients are "
                          "limited to six visits per year. (no more than once a calender month) The center accepts donations of food and "
                          "contributions of money, which is used ot buy needed commodities. ",
                    ),
                    SizedBox(height: 15),
                    //Eligability
                    InfoCard(
                      cardheight: 225.0,
                      title: "Eligability",
                      text:
                          "Serving residents of the city of Denton and Northern Denton County (North of Lake Lewisville) and qualify "
                          "under TEDAP (TX Emergency Food Assistance Progrram) Income Guidlines. Identification Needed (Drivers License, "
                          "School ID, or other photo ID) for all family memebers for which you are requesting food.",
                    ),
                    SizedBox(height: 15),
                    //Schedule
                    InfoCard(
                      cardheight: 130.0,
                      title: "Schedule",
                      text:
                          "1:00p.m. - 3:00PM Monday - Friday\n Excluding Holidays\n COVID ours 9-11am on Monday and Wednesday",
                    ),
                    SizedBox(height: 15),
                    //Location
                    InfoCard(
                      cardheight: 85.0,
                      title: "Location",
                      text: "306 N. Loop 288, Suite 400; Denton 76209",
                    ),
                    SizedBox(height: 15),
                    //Contact Information
                    InfoCard(
                      cardheight: 85.0,
                      title: "Contact Information",
                      text: "Phone Number: (940)382-0807",
                    ),
                    SizedBox(height: 15),
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
