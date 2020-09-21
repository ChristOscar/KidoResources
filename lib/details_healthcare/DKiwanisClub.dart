import 'package:flutter/material.dart';
import 'package:kidoresources/widgets/Information_Card.dart';

class DKiwanisChildrensClinic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 350.0,
            decoration: BoxDecoration(
              color: Colors.yellow[200],
              image: DecorationImage(
                  image: AssetImage("assets/images/HC-01.png"),
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
                      "Denton Kiwanis Childrens Clinic",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
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
                      cardheight: 200.0,
                      title: "Our Goal",
                      text:
                          "Provides medical, dental, eye exams, glasses, counseling services, and prescriptions services "
                          "for children up to age 18 who are not covered by Medicaid or other insurance. The clinic is a "
                          "referral service to a number of local health care providers. Must meet financial guidelines. "
                          "Area covered is Denton County north of Lake Lewisville.",
                    ),
                    SizedBox(height: 15),
                    //Eligability
                    InfoCard(
                      cardheight: 100.0,
                      title: "Eligability",
                      text:
                          "Children up to age 18. Must meet financial guidelines and not be covered by medicaid",
                    ),
                    SizedBox(height: 15),
                    //Schedule
                    InfoCard(
                      cardheight: 130.0,
                      title: "Schedule",
                      text:
                          "10:00AM - 5:00PM - Monday - Friday; 10:00AM - 12:00PM and 2:00PM - 5:00PM Monday,Wednesday and Thursday; "
                          "2:00PM - 5:00PM Tuesday; closed Friday",
                    ),
                    SizedBox(height: 15),
                    //Location
                    InfoCard(
                      cardheight: 100.0,
                      title: "Location",
                      text: "1001 N. Elm St. Denton, TX 76201",
                    ),
                    SizedBox(height: 15),
                    //Contact Information
                    InfoCard(
                      cardheight: 85.0,
                      title: "Contact Information",
                      text: "Phone Number: (940)387-6323",
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
