import 'package:flutter/material.dart';
import 'package:kidoresources/widgets/Information_Card.dart';

class AsburyRelief extends StatelessWidget {
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
                      "Asbury Relief Ministry Food Pantry",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
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
                      cardheight: 150.0,
                      title: "Our Goal",
                      text: "Provides food (2 days worth) 5 times a year",
                    ),
                    SizedBox(height: 15),
                    //Eligability
                    InfoCard(
                      cardheight: 100.0,
                      title: "Eligability",
                      text: "Purely For Those In Emergency Need",
                    ),
                    SizedBox(height: 15),
                    //Schedule
                    InfoCard(
                      cardheight: 130.0,
                      title: "Schedule",
                      text:
                          "10:00 a.m. -12:00p.m. 2nd & 4th Mondays 6:00p.m. - 8:00p.m. 1st & 4th Mondays  ",
                    ),
                    SizedBox(height: 15),
                    //Location
                    InfoCard(
                      cardheight: 100.0,
                      title: "Location",
                      text: "117 Hercules Ln. Denton, TX 76207",
                    ),
                    SizedBox(height: 15),
                    //Contact Information
                    InfoCard(
                      cardheight: 85.0,
                      title: "Contact Information",
                      text: "Phone Number: (940)387-6487",
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
