import 'package:flutter/material.dart';
import 'package:kidoresources/widgets/Information_Card.dart';

class TWUDentalHygiene extends StatelessWidget {
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
                      "TWU Dental Hygiene Clinic",
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
                      cardheight: 300.0,
                      title: "Our Goal",
                      text:
                          "Offers teeth cleaning, fluoride treatment, sealant, plaque control and full mouth X-rays to students and residents of Denton and"
                          "the surrounding areas. Services are offered at a reduced cost because students provide them in a learning situation. Keep in mind these"
                          "appointments are up to 4 hours in length. Anyone who schedules an appointment must be able to return if necessary to complete"
                          "treatment.",
                    ),
                    SizedBox(height: 15),
                    //Eligability
                    InfoCard(
                      cardheight: 100.0,
                      title: "Eligability",
                      text: "Anyone 4 year or Older",
                    ),
                    SizedBox(height: 15),
                    //Schedule
                    InfoCard(
                      cardheight: 130.0,
                      title: "Schedule",
                      text: "Call for Appointment",
                    ),
                    SizedBox(height: 15),
                    //Location
                    InfoCard(
                      cardheight: 100.0,
                      title: "Location",
                      text:
                          "TWU Denton - MCL Building- First floor room 102 Denton, TX 76204",
                    ),
                    SizedBox(height: 15),
                    //Contact Information
                    InfoCard(
                      cardheight: 85.0,
                      title: "Contact Information",
                      text: "Phone Number: (940)891-2888",
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
