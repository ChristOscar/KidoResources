import 'package:flutter/material.dart';
import 'package:kidoresources/widgets/Information_Card.dart';

class Dccds2 extends StatelessWidget {
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
                      "Denton City County Day School",
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
                      cardheight: 200.0,
                      title: "Our Mission",
                      text:
                          "Denton City County Day School mission is to support a diverse, multicultural population of pre-kindergarten "
                          "children and their families in Denton County by providing quality, affordable childcare and early childhood education. "
                          "Special emphasis and attention are placed on serving children from low to middle income families. ",
                    ),
                    SizedBox(height: 15),
                    //Eligability
                    InfoCard(
                      cardheight: 100.0,
                      title: "Eligability",
                      text: "Girls, 5-17 yrs old",
                    ),
                    SizedBox(height: 15),
                    //Schedule
                    InfoCard(
                      cardheight: 130.0,
                      title: "Schedule",
                      text:
                          "9:00AM-5:00PM Monday-Thursday; 9:00AM-3:00PM Friday",
                    ),
                    SizedBox(height: 15),
                    //Location
                    InfoCard(
                      cardheight: 100.0,
                      title: "Location",
                      text:
                          " 6001 Summerside Dr. Dallas, TX 75252\n Denton Location: 2317 W University Dr. Suite\n 167 Denton, TX 75252",
                    ),
                    SizedBox(height: 15),
                    //Contact Information
                    InfoCard(
                      cardheight: 85.0,
                      title: "Contact Information",
                      text: "Phone Number: (972)394-2400",
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
