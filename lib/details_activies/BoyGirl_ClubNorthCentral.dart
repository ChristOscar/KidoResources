import 'package:flutter/material.dart';
import 'package:kidoresources/widgets/Information_Card.dart';

class BoyGirlClubNorthCentral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 350.0,
            decoration: BoxDecoration(
              color: Colors.lightBlue[200],
              image: DecorationImage(
                  image: AssetImage("assets/images/meditation_bg.png"),
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
                      "Boys and Girls Club ",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
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
                    //Our Goal
                    InfoCard(
                      cardheight: 270.0,
                      title: "Our Goal",
                      text:
                          "\nDuring the academic school year the club offers a literacy club which conducts "
                          "project learning focussing on acedmic success through homework assistance and tutoring. "
                          "Sports club offers programs that help youth improve ther health through nutrition "
                          "education, fitness challenges, and social recognition, Fine arts club offers members "
                          "the opportunity to explore their creativity and artistic talents. Technology club  "
                          "memebrs have the opportunity to learn the fundamentals of computer hardware, software, "
                          "internet safety, and viral bullying awareness.",
                    ),
                    SizedBox(height: 15),
                    //Eligability
                    InfoCard(
                      cardheight: 100.0,
                      title: "Eligability",
                      text: "Children ages 5-17",
                    ),
                    SizedBox(height: 15),
                    //Schedule
                    InfoCard(
                      cardheight: 130.0,
                      title: "Schedule",
                      text:
                          "2:30PM-6:00PM Monday-Friday (School Year)\n 7:00AM-6:30PM(Summer)",
                    ),
                    SizedBox(height: 15),
                    //Location
                    InfoCard(
                      cardheight: 150.0,
                      title: "Location",
                      text: " 303 Alamo Ave. Lake Dallas, TX 75065\n"
                          "4601 N. I-35, Denton, TX 76207\n"
                          "1851 Oak Grove Pkwy., Little Elm, TX  75068\n"
                          "968 Raldon St. Lewisville, TX\n"
                          "804 N. Keaton, Sanger, TX 76266\n",
                    ),
                    SizedBox(height: 15),
                    //Contact Information
                    InfoCard(
                      cardheight: 85.0,
                      title: "Contact Information",
                      text: "Phone Number: (940)239-9309",
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
