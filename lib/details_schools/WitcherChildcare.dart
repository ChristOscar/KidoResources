import 'package:flutter/material.dart';
import 'package:kidoresources/widgets/Information_Card.dart';

class WitcherChildcare extends StatelessWidget {
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
                  image: AssetImage("assets/images/ummschool.png"),
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
                      "Witcher Childcare",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
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
                      cardheight: 220.0,
                      title: "Our Mission",
                      text:
                          "Leaving your child in someone else’s care is a difficult decision; that’s why Witchers Child Care aims to make "
                          "every family feel a little more at ease. Offering a comfortable home-based program, Witchers Child Care is "
                          "designed to make every child feel nurtured and engaged. With a low student-to-teacher ratio, age-appropriate"
                          "activities and a high standard of care, you’ll see why Witchers Child Care is a great option for your little one.",
                    ),
                    SizedBox(height: 15),
                    //Eligability
                    InfoCard(
                      cardheight: 130.0,
                      title: "Eligability",
                      text:
                          "Infant Age (1-18 months), Toddler Age (18 months - 3 years), Preschool Age (3-5 years), School Age (5-13 years)",
                    ),
                    SizedBox(height: 15),
                    //Capacity
                    InfoCard(
                      cardheight: 100.0,
                      title: "Capacity",
                      text: "12 Students",
                    ),
                    SizedBox(height: 15),
                    //Schedule
                    InfoCard(
                      cardheight: 130.0,
                      title: "Schedule",
                      text: "7:00AM-6:00PM Monday-Friday",
                    ),
                    SizedBox(height: 15),
                    //Location
                    InfoCard(
                      cardheight: 120.0,
                      title: "Location",
                      text: " 5417 Slay Dr, The Colony, TX 75056",
                    ),
                    SizedBox(height: 15),
                    //Contact Information
                    InfoCard(
                      cardheight: 85.0,
                      title: "Contact Information",
                      text: "Phone Number: (972)978-4856",
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
