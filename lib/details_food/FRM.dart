import 'package:flutter/material.dart';
import 'package:kidoresources/widgets/Information_Card.dart';

class FirstRefugeMinistries2 extends StatelessWidget {
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
                      "First Refuge Ministries",
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
                      title: "Our Goal",
                      text:
                          "Assist people who are hungry and in need of food during a finacial crisis.",
                    ),
                    SizedBox(height: 15),
                    //Our Mission
                    InfoCard(
                      cardheight: 75.0,
                      title: "Location",
                      text: "1701 Broadway St. Denton, TX 76201",
                    ),
                    SizedBox(height: 15),
                    //Our Mission
                    InfoCard(
                      cardheight: 100.0,
                      title: "Schedule",
                      text:
                          " 9:00AM-12:00PM Monday\n 1:00PM-4:00 PM Wednesday\n 6:00PM-8:00 PM Thursday",
                    ),
                    SizedBox(height: 15),
                    InfoCard(
                      cardheight: 85.0,
                      title: "Contact Information",
                      text: "Phone Number: (940)484-4384 ",
                    ),
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
