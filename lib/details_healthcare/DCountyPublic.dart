import 'package:flutter/material.dart';
import 'package:kidoresources/widgets/Information_Card.dart';

class DCountyPublicHealth extends StatelessWidget {
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
                      "Denton County Public Health",
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
                      cardheight: 350.0,
                      title: "Our Goal",
                      text: " Women’s health clinic, primary care 35"
                          "clinic, child health clinic, dental services,"
                          "immunizations for children and adults,"
                          "pregnancy testing, STD/STI screening and"
                          "treatment, TB elimination services, health"
                          "education presentations and outreach,"
                          "mammograms for low-income women over 40,"
                          "and car seat education and provision of free car"
                          "seats. Most programs and services are"
                          "available to low-income Denton County"
                          "residents and are offered by appointment only"
                          "with various or no fees. Clinics accept cash and"
                          "debit or credit cards only, but no client will be"
                          "turned away for inability to pay. The following"
                          "services are non-qualifying and offered to all"
                          "general public residing within Denton"
                          "County: STD/STI screening and treatment, TB"
                          "elimination services. Please call for"
                          "appointments.",
                    ),
                    SizedBox(height: 15),
                    //Eligability
                    InfoCard(
                      cardheight: 100.0,
                      title: "Eligability",
                      text:
                          "Most programs are available to lowincome families, and are provided at a low cost."
                          "Call for more information on specific programs.",
                    ),
                    SizedBox(height: 15),
                    //Schedule
                    InfoCard(
                      cardheight: 130.0,
                      title: "Schedule",
                      text: "7:00AM- 12:00PM and 1:00PM- 5:00PM"
                          "Monday,Wednesday, Thursday, Friday; 7:00AM12:00PM and 1:00PM- 5:30PM Tuesdays",
                    ),
                    SizedBox(height: 15),
                    //Location
                    InfoCard(
                      cardheight: 100.0,
                      title: "Location",
                      text: "535 S. Loop 288, Ste. 1003 Denton, TX 76205",
                    ),
                    SizedBox(height: 15),
                    //Contact Information
                    InfoCard(
                      cardheight: 85.0,
                      title: "Contact Information",
                      text: "Phone Number: (940)349-2900",
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
